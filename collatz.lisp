(defun collatz (num)
    (cdr (collatz-aux num)))

(defun collatz-aux (num)
(let ((n (getlast num)))
    (cond 
        ((= n 1) (list 1))
        ((plusp n)
            (if (evenp n)
                (append (list n) (collatz-aux (list (/ n 2))))
                (append (list n) (collatz-aux (list (+ (* 3 n) 1))))))
        (t nil))))

(defun getlast (lst)
    (if (null (cdr lst))
        (car lst)
        (getlast (cdr lst))))

(print (collatz '(3)))