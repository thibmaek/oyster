DIST_NAME = oyster
DIST_VERSION = 1.0.0

ARCHIVE_BASE := $(DIST_NAME)-$(DIST_VERSION:v%=%)

build:
	chmod +x lib/*.sh
	chmod +x lib/fs/*.sh
	chmod +x lib/os/*.sh
	chmod +x lib/oyster
	chmod +x lib/print/*.sh
	chmod +x lib/shell/*.sh
	chmod +x lib/strings/*.sh
	chmod +x lib/time/*.sh

dist: build
	mkdir $(ARCHIVE_BASE)
	cp -r lib/* $(ARCHIVE_BASE)/
	cp Makefile $(ARCHIVE_BASE)/
	cp README.md $(ARCHIVE_BASE)/
	tar -czf $(ARCHIVE_BASE).tar.gz $(ARCHIVE_BASE)
	rm -rf $(ARCHIVE_BASE)

install:
	ln -s $(PWD)/lib/oyster /usr/local/bin/oyster

install_user:
	ln -s $(PWD)/lib/oyster $(HOME)/bin/oyster

lint:
	cd lib && \
		shellcheck oyster -x && \
		shellcheck *.sh -x && \
		shellcheck fs/*.sh -x && \
		shellcheck os/*.sh -x && \
		shellcheck print/*.sh -x && \
		shellcheck shell/*.sh -x && \
		shellcheck strings/*.sh -x && \
		shellcheck time/*.sh -x && \
		cd ..

uninstall:
	unlink $(HOME)/bin/oyster || true
	unlink /usr/local/bin/oyster || true