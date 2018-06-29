.PHONY: all 3dsx cia clean

export GITREV  := $(shell git rev-parse HEAD 2>/dev/null | cut -c1-8)
export VERSION_MAJOR := 2
export VERSION_MINOR := 2
export VERSION_MICRO := 0
export VERSION := $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_MICRO)

ifneq ($(strip $(GITREV)),)
export VERSION := $(VERSION)-$(GITREV)
endif

all: 3dsx

3dsx:
	@$(MAKE) -f Makefile.3ds 3dsx

cia:
	@$(MAKE) -f Makefile.3ds cia

clean:
	@$(MAKE) -f Makefile.3ds   clean
