;;
;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defparameter *output* 0)

(dotimes (i 1000)
  (if (or (integerp (/ i 3)) (integerp (/ i 5)))
      (setq *output* (+ i *output*))
      )
  )

(format t "~a~%" *output*)
