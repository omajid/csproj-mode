EMACS=emacs

all: check

check:
	$(EMACS) -Q --batch -l csproj-mode.el -l csproj-mode-tests.el -f ert-run-tests-batch-and-exit

clean:
	rm -rf *.elc
