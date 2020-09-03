LISP = sbcl

# If python version requirement is not met, exit.
ifeq (, $(shell which figlet))
  $(error Cannot find figlet, consider installing it with your preferred package manager)
endif


build:
	$(LISP) \
		--eval "(ql:quickload :uiop)" \
		--eval "(load \"generate-ascii-letters.lisp\")" \
		--eval "(uiop:quit 0)"

