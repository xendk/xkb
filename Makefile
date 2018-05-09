
.PHONY: clean dist-clean
all: default.xkm xen_te.xkm

%.xkm: %.keymap
	mv $@ $*.bak || true
	xkbcomp -I. $<

# default:
# 	mv default.xkm default.bak || true
# 	xkbcomp -I. default.keymap

# xen_te:
# 	mv default.xkm default.bak || true
# 	xkbcomp -I. xen_te.keymap

clean:
	$(RM) *.bak

dist-clean: clean
	$(RM) *.xkm
