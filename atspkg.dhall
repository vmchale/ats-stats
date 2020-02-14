let prelude =
      https://hackage.haskell.org/package/ats-pkg/src/dhall/atspkg-prelude.dhall sha256:33e41e509b6cfd0b075d1a8a5210ddfd1919372f9d972c2da783c6187d2298ba

in    prelude.default
    ⫽ { bin =
        [   prelude.bin
          ⫽ { src = "test/spec.dats"
            , target = "${prelude.atsProject}/spec"
            , gcBin = True
            }
        ]
      , cflags =
        [ "-O2"
        , "-L./target/lib"
        , "-lfutstats"
        , "-lfutlinalg"
        , "-lOpenCL"
        , "-lm"
        ]
      , atsLib = False
      }
