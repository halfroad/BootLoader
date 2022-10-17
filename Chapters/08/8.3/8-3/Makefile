CFLAGS		:=	-Wall	-Wstrict-prototypes	-g	-fomit-frame-pointer	-ffreestanding


all: start.S led.S

	gcc	$(CFLAGS)	-c	-o	start.o	start.S
	gcc	$(CFLAGS)	-c	-o	led.o	led.S
	
	ld	-T	led.lds	-O	binary	-S	led_elf	led.bin
	
	objdump	-D	-m	arm	led_elf > led.dis
	


clean:

	rm	-rf	led.dis	led.bin	led_elf	*.o
