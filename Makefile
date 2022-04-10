DOC = doc/html/index.html doc/html/index-1.html doc/html/index-2.html \
		doc/html/index-3.html doc/html/index-4.html doc/html/index-5.html

INSTALL = install -c -m 644
PREFIX= /usr/local

all:

install: $(DOC)
	install -d $(PREFIX)/bin
	install -d $(PREFIX)/share/man/man1
	install -d $(PREFIX)/share/doc/2vcard
	install -c -m 755 src/2vcard $(PREFIX)/bin
	$(INSTALL) doc/2vcard.1 $(PREFIX)/share/man/man1
	$(INSTALL) $(DOC) $(PREFIX)/share/doc/2vcard
