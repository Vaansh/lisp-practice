(defun leaves (tree)
   (cond ((null tree) nil)
       ((nochild tree)  (list (car tree)))
       (t (append  (leaves (car (cdr tree)))  (leaves (car (cdr (cdr tree))))))))

(defun noleft (lst)
    (if (equal (car(car(cdr lst))) nil)
        t
        nil))

(defun noright (lst)
    (if (equal (car(car(cdr(cdr lst)))) nil)
        t
        nil))

(defun nochild (lst)
    (if (and (noleft lst) (noright lst) ) t nil))

(print (leaves '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))