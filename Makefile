.PHONY: clean

SHELL := bash
MAKEFLAGS += --warn-undefined-variables --no-builtin-rules -j
.DELETE_ON_ERROR:

all: target/lib/libfutstats.so target/lib/libfutlinalg.so

target/lib:
	mkdir -p $@

target/include:
	mkdir -p $@

target/lib/libfutstats.so: target/include/futstats.c target/lib
	gcc $< -o $@ -fPIC -shared

target/lib/libfutlinalg.so: target/include/futlinalg.c target/lib
	gcc $< -o $@ -fPIC -shared

target/include/futlinalg.c: linalg-export.fut target/include
	futhark opencl --library $< -o target/include/futlinalg

target/include/futstats.c: stats-export.fut target/include
	futhark opencl --library $< -o target/include/futstats

clean:
	@rm -rf lib *.c *.so *.h .atspkg target tags
