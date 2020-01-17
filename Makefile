# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c dmenu.c dwm.c util.c
OBJ = ${SRC:.c=.o}

all: options dmenu dwm

options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

dmenu: dmenu.o drw.o util.o
	$(CC) -o $@ dmenu.o drw.o util.o $(LDFLAGS)

dwm: ${OBJ}
	${CC} -o $@ dwm.o drw.o util.o ${LDFLAGS}

clean:
	rm -f dmenu dwm stest ${OBJ}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dmenu dwm ${DESTDIR}${PREFIX}/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dmenu
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dmenu\
		${DESTDIR}${PREFIX}/bin/dwm

.PHONY: all options clean dist install uninstall
