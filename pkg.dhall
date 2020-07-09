let prelude =
      https://hackage.haskell.org/package/ats-pkg/src/dhall/atspkg-prelude.dhall sha256:33e41e509b6cfd0b075d1a8a5210ddfd1919372f9d972c2da783c6187d2298ba

in  λ(x : List Natural) →
      prelude.makePkg { x, name = "ats-stats", githubUsername = "vmchale" }
