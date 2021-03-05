;method that prints lucas sequence up to n numbers.
(defun lucas-sequence (n)
    (lucas-helper n 0))

;helper method.
(defun lucas-helper (n count)
    (if (> (+ count 1) n)
        nil
        (cons (lucas count) (lucas-helper n (+ count 1)))))

;calculate lucas number at a position.
(defun lucas (n)
    (if (= n 0)
        2
        (if (= n 1)
            1
            (+ (lucas (- n 1)) (lucas (- n 2))))))

;; examples.
(print (lucas-sequence 1))
(print (lucas-sequence 2))
(print (lucas-sequence 5))
(print (lucas-sequence 10))

(print (lucas-sequence 0))
(print (lucas-sequence -1))
(print (lucas-sequence 10))
(print (lucas-sequence 8))
(print (lucas-sequence 2))