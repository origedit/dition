name=dition

test: $(name).uf1
	cd tester; make

$(name).uf1: $(name).icn width.txt
	rm $@
	xxd -r -p width.txt $@
	cat $(name).icn >> $@

noodle:
	noodle $(name).icn

