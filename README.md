# ats-stats

This is a demonstration of calling [Futhark](https://futhark-lang.org/) from
[ATS](http://www.ats-lang.org/). We use it to provide statistical functions in
ATS.

## Building

First, get [futhark](http://hackage.haskell.org/package/futhark) and 
[atspkg](http://hackage.haskell.org/package/ats-pkg). Make sure you have OpenCL.

To build:

```
futhark pkg sync
make
atspkg build
```

To run:

```
LD_LIBRARY_PATH=target/lib atspkg run
```

## Use

Find an example showing how to compute the mean of an array
[here](https://github.com/vmchale/ats-stats/blob/master/test/spec.dats).
