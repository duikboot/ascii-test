LISP = sbcl
ASCII = figlet

# If requirement is not met, exit.
ifeq (, $(shell which $(ASCII) 2>/dev/null))
  $(error Cannot find $(ASCII), consider installing it with your preferred package manager)
endif

# If $(LISP) requirement is not met, exit.
ifeq (, $(shell which $(LISP) 2>/dev/null))
  $(error Cannot find $(LISP), consider installing it with your preferred package manager)
endif




build:
	$(LISP) \
		--eval "(ql:quickload :uiop)" \
		--eval "(load \"generate-ascii-letters.lisp\")" \
		--eval "(uiop:quit 0)"

exe:
	sbcl \
	  --eval "(load \"generate-ascii-letters.lisp\")" \
	  --eval "(sb-ext:save-lisp-and-die #p\"generate-ascii\" :toplevel #'main :executable t :compression t)"
