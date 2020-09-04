default: test
.PHONY: test default


FILES=$(wildcard file-*)

test-%: %
	# Make sure file is in numerical order
	bash -ec "diff $^ <(sort -n $^)"

test: $(patsubst %,test-%,$(FILES))
