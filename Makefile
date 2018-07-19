.DEFAULT_GOAL := build

build:
	@wget http://www.bchemnet.com/suldr/pool/debian/extra/su/suldr-keyring_2_all.deb
	ar x suldr-keyring_2_all.deb
	tar xf data.tar.xz
	cp etc/apt/trusted.gpg.d/suldr-keyring.gpg .	
	rm -rf suldr-keyring_2_all.deb data.tar.xz control.tar.gz debian-binary etc/ usr/

