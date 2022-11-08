;; The prime 41, can be written as the sum of six consecutive primes:
;; 41 = 2 + 3 + 5 + 7 + 11 + 13
;; This is the longest sum of consecutive primes that adds to a prime below one-hundred.
;; The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
;; Which prime, below one-million, can be written as the sum of the most consecutive primes?

(load "./my-math-funcs.lisp")

(defun consecutive-primes (n &optional (x 2) (prime-list (list)))
  (let ((sum-prime (apply '+ prime-list)))
    (cond ((and (<= n sum-prime) (prime-p sum-prime)) sum-prime)
          (t (consecutive-primes n (+ x 1) prime-list)))))
