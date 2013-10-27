all: clean tar deb osxpkg rpm

clean:
	rm jailer*

tar:
	fpm -s dir -t tar -n "jailer" -v "0.0.1" bin/ etc/

deb:
	fpm -s dir -t deb --architecture all -n "jailer" -v "0.0.1" bin/ etc/

rpm:
	fpm -s dir -t rpm --architecture all -n "jailer" -v "0.0.1" bin/ etc/

osxpkg:
	fpm -s dir -t osxpkg -n "jailer" -v "0.0.1" bin/ etc/
