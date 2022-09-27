;; converter json em lista
(defun json->lst ( jsn )
  (if (eq 'STR (type jsn))
    (read (vl-string-translate "[]{}:," "()()  " jsn))
  )
)
;; Rememover ultimo item de uma lista

(defun remove->last ( lst )
  (if (null (cdr lst))
    '()
    (cons (car lst) (remove->last (cdr lst)))
  )
)
