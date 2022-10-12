# determine how many processors are present
CPU_CORES :=`cat /proc/cpuinfo | grep -m1 "cpu cores" | sed s/".*: "//`
# The command to run lilypond
LILYPOND := ../build
LILYFLAGS := -djob-count=$(CPU_CORES) -dno-preview

# Suffixes used in this Makefile
.SUFFIXES:
.SUFFIXES: .ly .pdf

SOURCES := $(wildcard ./*.ly)
OUTPUTS = $(patsubst %.ly,%.pdf,$(SOURCES))

.PHONY: all dist distclean clean

all: dist

clean:
	rm -vf *.midi

dist: $(OUTPUTS)

distclean: clean
	rm -f $(OUTPUTS)

%.pdf: %.ly
	$(LILYPOND) $(LILYFLAGS) $<
