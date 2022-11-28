;;; Prime Predicate
(defun prime-p (n)
  (if (member T (loop :for i :from 2 :to (isqrt n)
                      :collect (integerp (/ n i))))
      NIL
      T))

(defun palindromic-p (n)
  (equal (write-to-string n)
         (concatenate 'string
                      (reverse
                       (coerce
                        (write-to-string n) 'list)))))

(defun prime-factors (input-number &optional (prime-factor-list (list)) (cnt 2))
  (if (not (= input-number 1))
      (if (integerp (/ input-number cnt))
          (progn
            (push cnt prime-factor-list)
            (prime-factors (/ input-number cnt) prime-factor-list cnt))
          (prime-factors input-number prime-factor-list (+ cnt 1)))
      prime-factor-list))
