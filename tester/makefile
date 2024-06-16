name:=tester
source:=$(name).tal
rom:=$(name).rom

run: $(rom)
	cp ../*.uf1 font.uf1
	uxnemu $(rom)

$(rom): $(source) format #validate lint
	drifblim $(source) $@

format: $(source)
	uxnfor $(source)

validate: $(source)
	uxnbal $(source)

lint: $(source)
	uxnlin $(source)

left:
	(left $(source) &)

