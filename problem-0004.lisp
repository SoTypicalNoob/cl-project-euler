;; A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.

(defun palindromic-p (n)
  (equal (write-to-string n)
         (concatenate 'string
                      (reverse
                       (coerce
                        (write-to-string n) 'list)))))

(defun palindromic ()
  (let ((mult-num 0)
        (pal-num 0)
        (largest-pal 0))
    (loop for i from 100 to 1000 do
      (loop for j from 100 to 1000 do
        (setf mult-num (* i j))
        (if (palindromic-p mult-num)
            (setf pal-num mult-num))
        (if (> pal-num largest-pal)
            (setf largest-pal pal-num))))
    (format t "~A~%" largest-pal)))
