;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
;; What is the 10 001st prime number?

(defun prime-p (n)
  (if (member T (loop :for i :from 2 :to (isqrt n)
                      :collect (integerp (/ n i))))
      NIL
      T))

;; n: nth number.
;; x: optional. it starts the count from 2 if no other
;; number is specified.
(defun nth-prime (n &optional (x 2) (prime-list (list)))
  (if (prime-p x)
      (setf prime-list (push x prime-list)))
  (cond ((<= n (length prime-list) ) (car  prime-list))
        (t (nth-prime n (+ x 1) prime-list))))
