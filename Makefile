# DWM - Dynamic Window Manager
# See LICENSE file for copyright and license details.

include config.mk

all: dwm

%.o: %.c ${wildcard *.h}
	${CC} ${CFLAGS} -c $<

dwm: %: ${patsubst %.c, %.o, ${wildcard *.c}}
	${CC} ${LDFLAGS} $^ -o $@

clean:
	rm -f dwm *.o

install: all
	install -D -m 0755 dwm -t ${DESTDIR}${PREFIX}/bin
	install -D -m 0644 <(sed "s/VERSION/${VERSION}/g" dwm.1) ${DESTDIR}${MANPREFIX}/man1/dwm.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwm \
		${DESTDIR}${MANPREFIX}/man1/dwm.1

.PHONY: all clean install uninstall
