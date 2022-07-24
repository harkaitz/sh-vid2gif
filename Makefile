DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-vid2gif
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-vid2gif
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/vid2gif  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
