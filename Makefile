.PHONY: clean

MAKEFLAGS += --warn-undefined-variables --no-builtin-rules -j
.DELETE_ON_ERROR:

target/spec: test/spec.dats target/lib/libfut.so
	patscc -dd -DATS_MEMALLOC_LIBC $< -o $@ -L./target/lib -lfut -lOpenCL -lm

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
	@rm -rf lib *_dats.c *_sats.c *.so *.h .atspkg target tags
