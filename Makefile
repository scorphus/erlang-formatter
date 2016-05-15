.PHONY: test

test:
	./fmt.sh $(wildcard test/*.erl)
	bash -c '[[ 3 -eq $$(git status --porcelain test/ | wc -l) ]]'
	git checkout -- test
