;; 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
;; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
(defun smallest-multiple (range &optional (x range))
  (if (loop :for i :from 1 :to range
            :always (integerp (/ x i)))
      x
      (smallest-multiple range (+ x 1))))
