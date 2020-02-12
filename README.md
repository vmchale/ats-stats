# ats-stats

This is a demonstration of calling [Futhark](https://futhark-lang.org/) from
[ATS](http://www.ats-lang.org/). We use it to provide statistical functions in
ATS.

## Building

To build:

```
futhark pkg sync
make
atspkg build
```

To run (excuse the lack of polish):

```
LD_LIBRARY_PATH=target/lib atspkg run
```

## Use

An example showing how to compute the mean of an array
