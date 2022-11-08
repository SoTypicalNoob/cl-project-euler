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
