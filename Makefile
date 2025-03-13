# Variables
## Disables default SUFFIXES
.SUFFIXES:

## Define the command to compile .ly files
### Currently set to a wrapper script around lilypond, presupplying options
###+ ./build contains no-strip-output-dir, no-point-and-click, paper-size, preview
LYFLAGS ?=
LY = LYFLAGS=$(LYFLAGS) ./build

## Auxiliary files that are not directly related to the source compilation
AUX = README.md Makefile \
      build defs.ily \
      init-sets make-set \
      scores2json.py \
      tuneoverview shadowdir
      # .git .gitignore

## Define the directories containing source files (.ly files)
SRCDIRS := 2-4_marches 3-4_marches 4-4_marches 5-4_marches \
           6-8_marches 9-8_marches \
           standards template \
           airs hornpipes jigs reels strathspeys \
           other christmas sinterklaas suites

## Gather all .ly files in the defined source directories (recursive search)
LYSRCS := $(foreach dir, $(SRCDIRS), \
            $(wildcard $(dir)/**/*.ly) \
            $(wildcard $(dir)/*.ly) \
           )

## Define the corresponding .pdf targets for each .ly source file
PDFOBJS = $(patsubst %.ly, %.pdf, $(LYSRCS))

#Targets
## Default target: generate all PDF files from .ly files
.PHONY: all
all: $(PDFOBJS)

## Distribution target: Create a tarball containing source and auxiliary files
.PHONY: dist
dist: $(PDFOBJS) $(AUX)
	@tar -zhvcf pipeband-music.tar.gz $(SRCDIRS) $(AUX)

## Pattern rule for .ly to .pdf, .preview.pdf, and .preview.png compilation
%.pdf : %.ly
	$(LY) $<

## Register individual pdf targets
### This also allows for autocompletion
$(PDFOBJS): %.pdf: %.ly

## Handling subdirectories as targets
SUBDIRS := $(addsuffix /,$(SRCDIRS)) $(foreach pdfobj, $(PDFOBJS), $(dir $(pdfobj)))
### Sort and remove duplicates
SUBDIRS := $(sort $(SUBDIRS))

.PHONY: $(SUBDIRS)
$(SUBDIRS) : % :
	@$(MAKE) $(filter $(@D)/%.pdf,$(PDFOBJS))
