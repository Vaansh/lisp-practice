;; function that returns atomic elements of a list that are numbers.
(defun flatten-list (lst)
    (remove-previous-duplicates (numberify (flatten lst))))

;; function to remove all duplicates in a list and keep the first ones in.
(defun remove-previous-duplicates (lst)
    (reverse (remove-next-duplicates (reverse lst))))

;; function to remove all duplicates in a list.
(defun remove-next-duplicates (L)
    (cond 
        ((null L) L)
        ((member (car L) (cdr L)) (remove-next-duplicates (cdr L)))
        (t (cons (car L) (remove-next-duplicates (cdr L))))))

;;recursive function that removes all elements in the list that are not numbers.
(defun numberify (lst)
    (if (null lst)
        nil
        (if (numberp (car lst))
            (cons (car lst) (numberify (cdr lst)))
            (numberify (cdr lst)))))

;; recursive function that returns the atomic elements.
(defun flatten (lst)
    (if (null lst)
        nil
        (if (atom (car lst))            
            (cons (car lst) (flatten (cdr lst)))
            (append (flatten (car lst)) (flatten (cdr lst))))))

;; examples.
(print (flatten-list '(1 abc (((1 2 2  3) 3) 4) def 4)))
(print (flatten-list '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))

(print (flatten-list '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))
(print (flatten-list '(1 2 3)))
(print (flatten-list '(((((((1 a 2.3 2.3)))))))))
(print (flatten-list '(1 b (2 a) (y (3) a) a)))