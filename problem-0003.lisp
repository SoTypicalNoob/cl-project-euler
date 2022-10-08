;; The prime factors of 13195 are 5, 7, 13 and 29.
;; What is the largest prime factor of the number 600851475143 ?

(defun largest-prime-factor (input-number)
  (let ((prime-factors (list))
        (largest-prime-factor 0))
    (do ((cnt 2 (+ cnt 1)))
        ((= input-number 1)
         (format t "Largest Prime Factors: ~A~%" (car  prime-factors)))
      (do ()
          ((not (integerp (/ input-number cnt))))
        (setf input-number (/ input-number cnt))
        (push cnt prime-factors)))))
