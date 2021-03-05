;function that calls the two functions made below.
(defun sub-list (lst from to)
    (fromindex (toindex lst to) from))

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

;examples.
(print (toindex '(1 2 3 4 5) 4))
(print (fromindex '(1 2 3 4 5) 2))
(print (sub-list '(1 2 3 4 5) 2 4))
;from assignment.
(print (sub-list '(1 6 12) 2 3))
(print (sub-list '(1 6 12) 4 2))

(print (sub-list '(1 6 12) 2 3))
(print (sub-list '(1 6 12) 3 2))
(print (sub-list '(1 6 12) 2 4))
(print (sub-list '(1 6 12) 0 1))
(print (sub-list '(1 (2 j) 4 a 6 b) 1 4))