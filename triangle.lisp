;; Main function.
(defun triangle (n)
    (if (and (> n 0) (integerp n))
        (positive-triangle n)
        (if (and (< n 0) (integerp n))
            (negative-triangle (/ n -1))
            (print '(invalid number - enter positive or negative integer))))
    (terpri ))

;; Function for positive numbers.
(defun positive-triangle (n)
    (if (> n 0)        
        (positive-line n))    
    (if (>= n 1)
        (positive-triangle (- n 1))))

;; Helper function for positive numbers.
(defun positive-line (n &optional (start 0))    
    (if (< start n)
        (write '*))
    (if (<= start n)        
        (positive-line n (+ start 1))
        (terpri )))

;; Function for negative numbers.
(defun negative-triangle (n)
    (negative-block n n))

;; Helper function for negative numbers.
(defun negative-block (n no &optional (start 0))
    (empty-spaces (- start 1))
    (positive-line no)    
    (if (<= start n)        
        (negative-block n (- no 1) (+ start 1))))

;; Helper function for negative numbers.
(defun empty-spaces (n &optional (start n))    
    (if (< start n)
        (princ #\Space))
    (if (and (<= start n) (>= start 0))
        (empty-spaces n (- start 1))))

;; examples.
(print '(Triangle 7))
(terpri )
(triangle 7)

(print '(Triangle 4))
(terpri )
(triangle 4)

(print '(Triangle -5))
(terpri )
(triangle -5)

(print '(Triangle -1))
(terpri )
(triangle -1)

(print '(Triangle 2.5))
(triangle 2.5)

(print '(Triangle 0))
(triangle 0)

(print (triangle 2.5))
;; (print (triangle "Hello"))
(print (triangle 0))
(print (triangle 5))
(print (triangle -5))