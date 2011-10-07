PKGS = cairo freetype2

CPPFLAGS = `pkg-config --cflags ${PKGS}`
LDFLAGS = `pkg-config --libs ${PKGS}`

all: arc grid

grid: grid.cc geometry.hh cairo-helper.hh freetype-helper.hh sample-curves.hh bezier-arc-approximation.hh
arc: arc.cc geometry.hh cairo-helper.hh freetype-helper.hh sample-curves.hh bezier-arc-approximation.hh

clean:
	$(RM) arc
