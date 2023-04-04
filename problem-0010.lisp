;; The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
;; Find the sum of all the primes below two million.

(load "my-math-funcs.lisp")

(defun sum-of-primes (n &optional (x 2) (sum-prime 0))
  (if (<= x n)
      (if (prime-p x)
          (sum-of-primes n (+ x 1) (+ sum-prime x))
          (sum-of-primes n (+ x 1) sum-prime))
      sum-prime))
