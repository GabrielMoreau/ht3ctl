SHELL:=/bin/bash

DESTDIR=

BINDIR=/usr/bin
MANDIR=/usr/share/man/man1
COMPDIR=/etc/bash_completion.d

.PHONY: all ignore install update sync upload stat help pkg pages

all:
	pod2man ht3ctl | gzip > ht3ctl.1.gz
	pod2html --css podstyle.css --index --header ht3ctl > ht3ctl.html

install: update

update:
	@install -d -m 0755 -o root -g root $(DESTDIR)/$(MANDIR)
	@install -d -m 0755 -o root -g root $(DESTDIR)/$(COMPDIR)
	@install    -m 0755 -o root -g root ht3ctl $(DESTDIR)/$(BINDIR)
	@install    -m 0644 -o root -g root ht3ctl.1.gz $(DESTDIR)/$(MANDIR)
	@install    -m 0644 -o root -g root bash_completion $(DESTDIR)/$(COMPDIR)/ht3ctl

sync:
	git pull

pkg: all
	./make-package-debian

pages: all pkg
	mkdir -p public/download
	cp -p *.html       public/
	cp -p podstyle.css public/
	cp -p LICENSE.md   public/
	cp -p --no-clobber ht3ctl_*_all.deb  public/download/
	cd public; ln -sf ht3ctl.html index.html
	echo '<html><body><h1>HT3CTL Debian Package</h1><ul>' > public/download/index.html
	(cd public/download; while read file; do printf '<li><a href="%s">%s</a> (%s)</li>\n' $$file $$file $$(stat -c %y $$file | cut -f 1 -d ' '); done < <(ls -1t *.deb) >> index.html)
	echo '</ul></body></html>' >> public/download/index.html

help:
	@echo "Possibles targets:"
	@echo " * all     : make manual"
	@echo " * install : complete install"
	@echo " * update  : update install (do not update cron file)"
	@echo " * sync    : sync with official repository"
	@echo " * pkg     : build Debian package"
