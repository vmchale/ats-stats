.PHONY: clean

MAKEFLAGS += --warn-undefined-variables --no-builtin-rules -j
.DELETE_ON_ERROR:

target/spec: target/spec.c target/lib/libfut.so
	gcc -DATS_MEMALLOC_LIBC $< -o $@ -I$$PATSHOME -I$$PATSHOME/ccomp/runtime -L$$PATSHOME/ccomp/atslib/lib -L./target/lib -lfut -lOpenCL -lm -latslib

target/spec.c: test/spec.dats SATS/futhark.sats SATS/futhark-types.sats
	@mkdir -p $(dir $@)
	patsopt -dd $< > $@

all: target/lib/libfut.so

target/lib:
	mkdir -p $@

target/include:
	mkdir -p $@

target/lib/libfut.so: target/include/fut.c target/lib
	gcc $< -o $@ -fPIC -shared

target/include/fut.c: export.fut target/include
	futhark opencl --library $< -o target/include/fut

clean:
	@rm -rf lib *_dats.c *_sats.c *.so *.h .atspkg target tags .shake
