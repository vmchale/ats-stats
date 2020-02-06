.PHONY: clean

all: futstats.h libfutstats.so

futstats.h: stats-export.c
	cp $< $@

libfutstats.so: stats-export.c
	gcc $< -o $@ -fPIC -shared

stats-export.c: stats-export.fut
	futhark opencl --library $<

clean:
	@rm -rf lib *.c *.so *.h
