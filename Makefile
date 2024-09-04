test: generate
	xmake b diff
	xmake r diff
config:
	xmake f --menu

.PHONY: test config