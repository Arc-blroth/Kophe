# Kophe Makefile
#
# Partially based on the Pandoc Makefile at
# https://gist.github.com/kristopherjohnson/7466917
# which is licensed under the public domain (see https://git.io/JVUOE)

TEMPLATE = ./KopheTheme.pptx
SRC_DIR = src
OUT_SLIDES_DIR = slides

# SUMMARY.md is specific to mdbook, so ignore it for slides generation
SOURCE_DOCS_WITH_SUMMARY := $(wildcard src/*.md)
SOURCE_DOCS := $(filter-out $(SRC_DIR)/SUMMARY.md,$(SOURCE_DOCS_WITH_SUMMARY))

EXPORTED_DOCS = $(patsubst $(SRC_DIR)/%,$(OUT_SLIDES_DIR)/%,$(SOURCE_DOCS:.md=.pptx))

# Allow overriding pandoc's location
ifeq ($(PANDOC),)
    PANDOC := /usr/local/bin/pandoc
endif

# Slides rule
$(OUT_SLIDES_DIR)/%.pptx: $(SRC_DIR)/%.md
	$(PANDOC) $< --reference-doc=$(TEMPLATE) -o $@

.PHONY: all clean

all: slides $(EXPORTED_DOCS)

slides:
	- mkdir -p slides

clean:
	- rm -r $(OUT_SLIDES_DIR)