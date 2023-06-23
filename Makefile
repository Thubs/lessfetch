PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install lessfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p lessfetch $(DESTDIR)$(PREFIX)/bin/lessfetch
	@cp -p lessfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/lessfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/lessfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/lessfetch.1*
