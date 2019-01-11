TEX = xelatex
HEADER = beameropt.tex

PANDOC_FLAGS = -t beamer \
	-s \
	--listings \
	-H $(HEADER) \
	--pdf-engine=$(TEX)

SOURCES_MD := $(wildcard ????-??-??.md)
SLIDES_MD := $(patsubst %.md,%.pdf,$(SOURCES_MD))
AUX_MD := $(patsubst %.md,%.aux,$(SOURCES_MD))
LOG_MD := $(patsubst %.md,%.log,$(SOURCES_MD))

SOURCES_RST := $(wildcard ????-??-??.rst)
SLIDES_RST := $(patsubst %.rst,%.pdf,$(SOURCES_RST))
AUX_RST := $(patsubst %.rst,%.aux,$(SOURCES_RST))
LOG_RST := $(patsubst %.rst,%.log,$(SOURCES_RST))
SLIDES_HTML := $(patsubst %.rst,%.html,$(SOURCES_RST))

.PHONY: all clean

all: $(SLIDES_MD) $(SLIDES_RST) $(SLIDES_HTML)

%.pdf: %.md $(HEADER)
	pandoc $(PANDOC_FLAGS) $< -o $@

%.pdf: %.rst $(HEADER)
	python3 mkmeta.py $<
	pandoc $(PANDOC_FLAGS) --metadata-file=$(basename $<).yaml $< -o $@

%.html: %.rst $(HEADER)
	python3 mkmeta.py $<
	pandoc $(PANDOC_FLAGS) --metadata-file=$(basename $<).yaml $< -o $@

clean:
	-rm -f $(SLIDES_MD) $(SLIDES_RST) $(AUX) $(LOG) missfont.log

# The following command works with reST source + YAML metadata
# pandoc -t beamer -s --listings -H beameropt.tex --pdf-engine=xelatex --metadata-file=2019-01-10.yaml -o 2019-01-10.pdf 2019-01-10.rst
