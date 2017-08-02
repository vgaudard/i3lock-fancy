INSTALL := install
SCRIPT := lock
SCRIPTDESTDIR := /usr/local/bin
ICONSDESTDIR := /usr/local/bin/icons
ICONSFAMILY := simple
ICONSFOLDER := icons/$(ICONSFAMILY)
ICONS := $(ICONSFOLDER)/lock.png $(ICONSFOLDER)/lockdark.png
DOC := doc/lock.1
DOCDESTDIR := /usr/local/share/man/man1

.PHONY: all lock icons doc

all: lock icons doc

lock: $(SCRIPT)
	$(INSTALL) $(SCRIPT) $(SCRIPTDESTDIR)

icons: $(ICONS)
	$(INSTALL) $(ICONS) $(ICONSDESTDIR)

doc: $(DOC)
	$(INSTALL) $(DOC) $(DOCDESTDIR) && mandb

