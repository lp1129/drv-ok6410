# makefile


KERN_DIR := /home/lpeng/henu/bspwork/linux-3.6.7

obj-m += timer.o

all: modules clean

modules:
	make -C $(KERN_DIR) M=`pwd` modules
	cp *.ko /home/lpeng/henu/bspwork/rootfs/s-rootfs/obj

clean:
	make -C $(KERN_DIR) M=`pwd` clean
