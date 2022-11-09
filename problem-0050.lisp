;; The prime 41, can be written as the sum of six consecutive primes:
;; 41 = 2 + 3 + 5 + 7 + 11 + 13
;; This is the longest sum of consecutive primes that adds to a prime below one-hundred.
;; The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
;; Which prime, below one-million, can be written as the sum of the most consecutive primes?

(load "./my-math-funcs.lisp")

(defun consecutive-primes (n &optional (x 2) (prime-list (list)))
  (let ((sum-prime (apply '+ prime-list)))
    (if (prime-p x)
        (progn
          (setf prime-list (push x prime-list))
          (test))
        (consecutive-primes n (+ x 1) prime-list))
    (cond ((and (<= sum-prime n) (prime-p sum-prime))
           (format t "~A~%" sum-prime))
          (t (consecutive-primes n (+ x 1) prime-list)))))

(defun consecutive-primes (n &optional (x 2) (prime-list (list)) (sum-prime 0))
  (if (<= sum-prime n)
      (if (prime-p x)
          (progn
            (setf prime-list (push x prime-list))
            (setf sum-prime (+ x sum-prime))
            (consecutive-primes n (+ x 1) prime-list sum-prime))
          (consecutive-primes n (+ x 1) prime-list sum-prime))
      (reverse (cdr prime-list))))

(defun find-sum-prime (consecutive-primes)
  (let ((sum-prime (apply '+ consecutive-primes)))
    (if (prime-p sum-prime)
        sum-prime
        (find-sum-prime (cdr consecutive-primes)))))

(defun find-sum-prime-reverse (consecutive-primes)
  (let* ((reverse-primes (reverse consecutive-primes))
         (sum-prime (apply '+ reverse-primes)))
    (if (prime-p sum-prime)
        sum-prime
        (find-sum-prime (reverse (cdr reverse-primes))))))
