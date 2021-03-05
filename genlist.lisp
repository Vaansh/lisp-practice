(defun genlist (&optional (n 10))
        (genlist-helper n 1))

(defun genlist-helper (&optional (n 10) m)
        (if (integerp n)
                (cond
                        ((= m n) (list n))
                        ((< m n) (cons m (genlist-helper n (+ m 1))))
                        (t nil))
                nil))

;; examples
(print (genlist 2))
(print (genlist 1))
(print (genlist 'A))
(print (genlist 0))
(print (genlist ))
