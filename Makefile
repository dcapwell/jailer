NAME = --name "jailer"
VERSION = --version "0.0.1"
ARCH = --architecture all
URI = --url "https://github.com/dcapwell/jailer"
LICENSE = --license "MIT"
DESC = --description "Simple command line to create jailed environments for processes to live in."

DIRS = bin/ etc/

MIN = $(NAME) $(VERSION)
ALL = $(MIN) $(ARCH) $(URI) $(LICENSE) $(DESC)

all: clean tar deb rpm

clean:
	rm -f jailer*

tar:
	fpm -s dir -t tar $(MIN) $(DIRS)

deb:
	fpm -s dir -t deb $(ALL) $(DIRS)

rpm:
	fpm -s dir -t rpm $(ALL) $(DIRS)
