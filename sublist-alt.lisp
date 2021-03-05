;function that calls the two functions made below.
(defun sub-list (lst &optional (from 1) (to (length lst)))
    (if (not from)
        (setq from 1))
    (cond
        ((< to from)(reverse (fromindex (toindex lst from) to)))
        (t  (fromindex (toindex lst to) from))))

;recursive function that returns list values from given index to the end.
(defun fromindex (lst from)
    (cond         
        ((> (- from 1) 0) (fromindex (cdr lst) (- from 1))) 
        (t lst)))

;recursive function that returns list values from the start to given index.
(defun toindex (lst to)
    (if (or (= to 0) (null lst))
        '()
        (cons (car lst) (toindex (cdr lst) (- to 1)))))

; examples from assignment.
(print (sub-list '(1 6 12) 2))
(print (sub-list '(1 6 12) 3 1))
(print (sub-list '(1 6 12) nil 1))

(print (sub-list '(1 6 12)))
(print (sub-list '(1 6 12) 2))
(print (sub-list '(1 6 12) nil 2))
(print (sub-list '(1 a 12) 2 4))
(print (sub-list '(1 c b a (3 h)) 4 2))