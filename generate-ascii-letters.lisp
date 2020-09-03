
(defun range (max &key (min 0) (step 1))
  (loop for n from min below max by step
        collect n))

(defun create-ascii-char (char)
  (uiop:run-program (list "figlet" (string char)) :output :interactive))

(defun create-chart ()
  (let ((ascii-codes (range 126)))
    (mapcar #'code-char ascii-codes)))

(with-open-file (s "characters.py"
                   :direction :output
                   :if-exists :supersede)
  (let ((output (mapcar #'(lambda (c)
                            (uiop:run-program (list "figlet" (string c)) :output :string))
                    (create-chart))))
    (format s "characters = (~{r\"\"\"~A\"\"\",~})" output)))
