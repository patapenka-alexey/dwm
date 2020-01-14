# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c dmenu.c dwm.c stest.c util.c
OBJ = ${SRC:.c=.o}

all: options dmenu dwm stest

options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	cp config.def.h $@

dmenu: dmenu.o drw.o util.o
	$(CC) -o $@ dmenu.o drw.o util.o $(LDFLAGS)

dwm: ${OBJ}
	${CC} -o $@ dwm.o drw.o util.o ${LDFLAGS}

stest: stest.o
	$(CC) -o $@ stest.o $(LDFLAGS)

clean:
	rm -f dmenu dwm stest ${OBJ}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dmenu dmenu_path dmenu_run dwm stest dwm_clock.sh ${DESTDIR}${PREFIX}/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dmenu
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dmenu_path
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dmenu_run
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm_clock.sh
	chmod 755 $(DESTDIR)$(PREFIX)/bin/stest

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dmenu\
		${DESTDIR}${PREFIX}/bin/dwm\
		$(DESTDIR)$(PREFIX)/bin/dmenu_path\
		$(DESTDIR)$(PREFIX)/bin/dmenu_run\
		$(DESTDIR)$(PREFIX)/bin/dwm_clock.sh\
		$(DESTDIR)$(PREFIX)/bin/stest

.PHONY: all options clean dist install uninstall
