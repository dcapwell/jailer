NAME = "jailer"
DIRS = bin/ etc/
VERSION = "0.0.1"

all: clean tar deb osxpkg rpm

clean:
	rm -f jailer*

tar:
	fpm -s dir -t tar -n $(NAME) -v $(VERSION) $(DIRS)

deb:
	fpm -s dir -t deb --architecture all -n $(NAME) -v $(VERSION) $(DIRS)

rpm:
	fpm -s dir -t rpm --architecture all -n $(NAME) -v $(VERSION) $(DIRS)

osxpkg:
	fpm -s dir -t osxpkg -n $(NAME) -v $(VERSION) $(DIRS)
