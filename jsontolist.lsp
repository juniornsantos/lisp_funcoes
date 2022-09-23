(defun json->lst ( jsn ) 
  (if (eq 'STR (type jsn))
    (read (vl-string-translate "[]{}:," "()()  " jsn))
  )
)


Imagine a situação, eu preciso determinar o número de 'blocos' a partir da condição abaixo:
Se o valor é menor que 6 o resultado é igual a 0 (< 6 = 0) se estiver entre:

06 a 10 = 1
11 a 18 = 2
19 a 26 = 3
27 a 34 = 4
35 a 42 = 5
43 a 50 = 6
51 a 58 = 7
59 a 66 = 8
67 a 74 = 9
75 a 82 = 10 
[...]

Como fazer um algorítimo para calcular o resultado ?


(setq numerodedeapartamentos 10)
(setq numerocerto  (/ (+ numerodedeapartamentos 5) 8))







(setq numerocerto1 
  (itoa 
    (if	(< numerodedeapartamentos 11)
      1
      (if (>= (rem (/ numerodedeapartamentos 8.) (fix (/ numerodedeapartamentos 8.) ) ) 0.375)
        (fix (1+ (/ numerodedeapartamentos 8.)))
        (fix (/ numerodedeapartamentos 8.))
      )
    )
  )
)