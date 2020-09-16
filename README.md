# ats-stats

This is a demonstration of calling [Futhark](https://futhark-lang.org/) from
[ATS](http://www.ats-lang.org/). We use it to provide statistical functions in
ATS.

## Building

First, get [futhark](http://hackage.haskell.org/package/futhark) and
[ATS](http://www.ats-lang.org/Downloads.html#ATS_packages). Make sure you have OpenCL.

To run:

```
futhark pkg sync
make
LD_LIBRARY_PATH=target/lib ./target/spec
```

### Shake

For slightly better dependency tracking:

```
futhark pkg sync
./Shakefile.hs run
```

## Use

Find an example showing how to compute the mean of an array
[here](https://github.com/vmchale/ats-stats/blob/master/test/spec.dats).
