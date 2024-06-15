.PHONY: all install uninstall clean

name = tuxscape2

all:
	gcc ../main.c -I ../inc -Ofast -lglfw -lm -o $(name)

install:
	cp $(name) $(DESTDIR)

uninstall:
	rm $(DESTDIR)/$(name)

clean:
	rm $(name)