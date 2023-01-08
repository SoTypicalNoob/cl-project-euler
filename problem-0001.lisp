;;
;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defun mult-3-5 (range)
  (loop :for item :from 0 :below range
        :summing (if (or (integerp (/ item 3)) (integerp (/ item 5)))
                     item
                     0)))

(mult-3-5 1000)
