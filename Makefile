# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c dmenu.c dwm.c util.c
OBJ = ${SRC:.c=.o}

all: options dwm

options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

dwm: ${OBJ}
	${CC} -o $@ dmenu.o dwm.o drw.o util.o ${LDFLAGS}

clean:
	rm -f dwm stest ${OBJ}

install: all
	mkdir -p /usr/local/bin
	cp -f dwm /usr/local/bin
	chmod 755 /usr/local/bin/dwm
	cp -f configs/dwm.desktop /usr/share/xsessions/
	chmod 644 /usr/share/xsessions/dwm.desktop
	cp -f scripts/dwm_startup.sh /usr/local/bin/dwm_startup.sh
	chmod +x /usr/local/bin/dwm_startup.sh

uninstall:
	rm -f /usr/local/bin/dwm
	rm -f /usr/local/bin/dwm_startup.sh
	rm -f /usr/share/xsessions/dwm.desktop

.PHONY: all options clean dist install uninstall
