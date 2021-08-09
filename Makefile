.PHONY: all clean
all: assets/hello assets/linux-2.6.32.65 assets/glibc-2.21 assets/freebsd assets/gdb-7.9.1 assets/newlib-2.2.0 assets/helloworld-CentOS6.ova

clean:
	rm -rf assets

assets:
	mkdir -p assets

assets/hello.zip: assets
	wget https://kozos.jp/books/helloworld/archive/hello.zip -O assets/hello.zip

assets/hello: assets/hello.zip
	unzip -o assets/hello.zip -d assets
	mkdir -p /home/user
	unzip -o assets/hello.zip -d /home/user

assets/linux-2.6.32.65.tar.xz: assets
	wget https://kozos.jp/books/helloworld/archive/linux-2.6.32.65.tar.xz -O assets/linux-2.6.32.65.tar.xz

assets/linux-2.6.32.65: assets/linux-2.6.32.65.tar.xz
	tar xf assets/linux-2.6.32.65.tar.xz -C assets

assets/glibc-2.21.tar.xz: assets
	wget https://kozos.jp/books/helloworld/archive/glibc-2.21.tar.xz -O assets/glibc-2.21.tar.xz

assets/glibc-2.21: assets/glibc-2.21.tar.xz
	tar xf assets/glibc-2.21.tar.xz -C assets

assets/src.txz: assets
	wget https://kozos.jp/books/helloworld/archive/src.txz -O assets/src.txz

assets/freebsd: assets/src.txz
	mkdir -p assets/freebsd
	tar xf assets/src.txz -C assets/freebsd

assets/gdb-7.9.1.tar.xz: assets
	wget https://kozos.jp/books/helloworld/archive/gdb-7.9.1.tar.xz -O assets/gdb-7.9.1.tar.xz

assets/gdb-7.9.1: assets/gdb-7.9.1.tar.xz
	tar xf assets/gdb-7.9.1.tar.xz -C assets

assets/newlib-2.2.0.tar.gz: assets
	wget https://kozos.jp/books/asm/newlib-2.2.0.tar.gz -O assets/newlib-2.2.0.tar.gz

assets/newlib-2.2.0: assets/newlib-2.2.0.tar.gz
	tar xf assets/newlib-2.2.0.tar.gz -C assets

assets/helloworld-CentOS6.ova: assets
	wget ftp://ftp2.shuwasystem.co.jp/pub/book/4478/helloworld-CentOS6.ova -O assets/helloworld-CentOS6.ova
