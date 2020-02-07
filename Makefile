.PHONY: clean

all: target/lib/libfutstats.so

target/lib:
	mkdir -p $@

target/include:
	mkdir -p $@

target/lib/libfutstats.so: target/include/futstats.c target/lib
	gcc $< -o $@ -fPIC -shared

target/include/futstats.c: stats-export.fut target/include
	futhark opencl --library $< -o target/include/futstats

clean:
	@rm -rf lib *.c *.so *.h .atspkg target tags
