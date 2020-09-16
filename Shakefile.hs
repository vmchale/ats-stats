#!/usr/bin/env cabal
{- cabal:
build-depends: base, shake-futhark, shake, directory, language-ats
default-language: Haskell2010
ghc-options: -Wall -threaded -rtsopts "-with-rtsopts=-I0 -qg -qb"
-}

import           Control.Monad              (filterM, (<=<))
import           Development.Shake
import           Development.Shake.FilePath
import           Development.Shake.Futhark
import           Language.ATS               (getDependencies, parse)
import           System.Directory           (createDirectoryIfMissing)

atsDeps :: FilePath -> Action [FilePath]
atsDeps =
    filterM doesFileExist . getDependencies . either (error.show) id . parse
        <=< liftIO . readFile

main :: IO ()
main = shakeArgs shakeOptions { shakeFiles = ".shake", shakeLint = Just LintBasic, shakeChange = ChangeModtimeAndDigestInput } $ do
    want [ "target/spec" ]

    ["lib/github.com/diku-dk/statistics/statistics.fut", "lib/github.com/diku-dk/linalg/linalg.fut"] &%> \_ -> do
        need ["futhark.pkg"]
        command [] "futhark" ["pkg", "sync"]

    "clean" ~>
        command [] "rm" ["-rf", ".shake", "lib", "*_dats.c", "*_sats.c", "*.so", "*.h", ".atspkg", "target", "tags"]

    "run" ~>
        need ["target/spec", "target/lib/libfut.so"] *>
        command [AddEnv "LD_LIBRARY_PATH" "./target/lib"] "./target/spec" []

    "target/spec.c" %> \out -> do
        let inp = "test/spec.dats"
        need =<< atsDeps inp
        traced "dir" $ createDirectoryIfMissing True (takeDirectory out)
        (Stdout contents) <- command [] "patsopt" ["-dd", inp]
        traced "patsopt" $ writeFile out contents


    "target/spec" %> \out -> do
        let inp = "target/spec.c"
        need [inp, "target/lib/libfut.so"]
        (Just patsHome) <- getEnv "PATSHOME"
        let includeFlags = fmap ("-I" ++) [patsHome </> "ccomp/runtime", patsHome]
        command [] "gcc"
            (["-DATS_MEMALLOC_LIBC", inp, "-o", out, "-L./target/lib", "-lfut", "-lOpenCL", "-lm", "-L" ++ patsHome </> "ccomp/atslib/lib"] ++ includeFlags)

    "target/lib/libfut.so" %> \out -> do
        let inp = "target/include/fut.c"
        need [inp]
        traced "dir" $ createDirectoryIfMissing True (takeDirectory out)
        command [] "gcc" [inp, "-o", out, "-fPIC", "-shared"]

    "target/include/fut.c" %> \out -> do
        let inp = "export.fut"
        needFut [inp]
        let dir = takeDirectory out
        traced "dir" $ createDirectoryIfMissing True dir
        command [] "futhark" ["opencl", "--library", inp, "-o", dropExtension out]
