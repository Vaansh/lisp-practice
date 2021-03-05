;; function that splits anf returns a list of a given list innto two halves.
(defun split (lst)
    (if (null lst)
        nil
        (list (sub-list lst 1 (half lst)) (sub-list lst (+ (half lst) 1) (length lst)))))

;; function that gives half the length, rounded up if total length is odd.
(defun half (lst)
    (let ((halflen (/ (length lst) 2)))
        (if (= (mod halflen 2) 0)
            halflen
            (+ halflen (/ 1 2)))))

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

;; examples.
(print (split '(1 2 3 4)))
(print (split '(1 2 3 4 5)))
(print (split '(1 (2 3) 4 5 6)))

(print (split '(1 2 3 4)))
(print (split '(1 2 3 4 5)))
(print (split '(1 (2 3) 4 5 6)))