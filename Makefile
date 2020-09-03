LISP = sbcl

build:
	$(LISP) \
		--eval "(ql:quickload :uiop)" \
		--eval "(load \"generate-ascii-letters.lisp\")" \
		--eval "(uiop:quit 0)"

