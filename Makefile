LILY := ./build

AUX = README.md Makefile \
	  build defs.ily \
	  init-sets make-set \
	  scores2json.py \
	  tuneoverview shadowdir
	  #.git .gitignore

SRCDIRS := 2-4_marches 3-4_marches 4-4_marches 5-4_marches \
		   6-8_marches 9-8_marches \
		   standards template \
		   airs hornpipes jigs reels strathspeys \
		   other christmas sinterklaas suites

LYSRCS := $(foreach dir,$(SRCDIRS),$(wildcard $(dir)/**/*.ly) $(wildcard $(dir)/*.ly))
PDFOBJS = $(patsubst %.ly,%.pdf,$(LYSRCS))

.PHONY: all
all: $(PDFOBJS)

# Pattern rules
%.pdf %.preview.pdf %.preview.png &: %.ly
	$(LILY) $<

.PHONY: dist
dist: $(LYSRCS) $(PDFOBJS) $(AUX)
	@tar -zhvcf pipeband-music.tar.gz $(SRCDIRS) $(AUX)
