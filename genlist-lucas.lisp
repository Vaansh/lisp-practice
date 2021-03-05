(defun genlist (&optional (n 10))
    (if (= n 0)
        2
        (if (= n 1)
            1
            (+ (lucas (- n 1)) (lucas (- n 2))))))