PREFIX ?= /usr
BSPWM ?= $(PREFIX)/bin/bspwm
STARTKDE ?= $(PREFIX)/bin/startkde

build:
	m4 -D BSPWM=$(BSPWM) bspwm-kde-session.sh.m4 > bspwm-kde-session.sh
	m4 -D PREFIX=$(PREFIX) -D STARTKDE=$(STARTKDE) bspwm-kde.desktop.m4 > bspwm-kde.desktop

install: build
	install -Dm755 bspwm-kde-session.sh $(DESTDIR)/$(PREFIX)/bin/bspwm-kde-session
	install -Dm644 bspwm-kde.desktop $(DESTDIR)/$(PREFIX)/share/xsessions/bspwm-kde.desktop
	install -Dm644 README.md $(DESTDIR)/$(PREFIX)/share/doc/bspwm-kde-session/README.md
	install -Dm644 UNLICENSE.md $(DESTDIR)/$(PREFIX)/share/licenses/bspwm-kde-session/UNLICENSE.md

clean:
	rm -f bspwm-kde.desktop
	rm -f bspwm-kde-session.sh

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/bin/bspwm-kde-session
	rm -f $(DESTDIR)/$(PREFIX)/share/xsessions/bspwm-kde.desktop
	rm -rf $(DESTDIR)/$(PREFIX)/share/doc/bspwm-kde-session
	rm -rf $(DESTDIR)/$(PREFIX)/share/licenses/bspwm-kde-session

