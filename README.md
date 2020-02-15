# ats-stats

This is a demonstration of calling [Futhark](https://futhark-lang.org/) from
[ATS](http://www.ats-lang.org/). We use it to provide statistical functions in
ATS.

## Building

First, get [futhark](http://hackage.haskell.org/package/futhark) and optionally
[atspkg](http://hackage.haskell.org/package/ats-pkg). Make sure you have OpenCL.

To run (without `atspkg`):

```
futhark pkg sync
make
LD_LIBRARY_PATH=target/lib ./target/spec
```

With `atspkg`:

```
futhark pkg sync
make all
LD_LIBRARY_PATH=target/lib atspkg run
```

## Use

Find an example showing how to compute the mean of an array
[here](https://github.com/vmchale/ats-stats/blob/master/test/spec.dats).
