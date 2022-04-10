DOC = doc/html/index.html doc/html/index-1.html doc/html/index-2.html \
		doc/html/index-3.html doc/html/index-4.html doc/html/index-5.html

INSTALL = install -c -m 644

all:

install: $(DOC)
	install -d $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/share/man/man1
	install -d $(DESTDIR)/usr/share/doc/2vcard
	install -c -m 755 src/2vcard $(DESTDIR)/usr/bin
	$(INSTALL) doc/2vcard.1 $(DESTDIR)/usr/share/man/man1
	$(INSTALL) $(DOC) $(DESTDIR)/usr/share/doc/2vcard
