#! /usr/bin/gcl -f 

;; include the lisp-cew module




 





;; init error counts

(setq cew_Test_Count 0)
(setq cew_Error_Count 0)


;; load module to test
(load "../../Lifo.cl")

;; run tests

(incf cew_Test_Count)
(setq lifo0 (new))
(setq xact lifo0)
(setq xexp ())
(if (not (equal xact xexp))
   (progn
      (incf cew_Error_Count)
      (format t "Test Case ERROR (Ncase) in script at line number ~A~%" 13)
      (format t "Actual Value is ~A~%" xact)
      (format t "Expected Value is ~A~%" xexp)
   )
)

 ;; succeeds

(incf cew_Test_Count)
(psh lifo0 7)
(setq xact (size lifo0))
(setq xexp 1)
(if (not (equal xact xexp))
   (progn
      (incf cew_Error_Count)
      (format t "Test Case ERROR (Ncase) in script at line number ~A~%" 14)
      (format t "Actual Value is ~A~%" xact)
      (format t "Expected Value is ~A~%" xexp)
   )
)

 ;; fails, since I screwed the Lifo up

;; output error counts

(format t "~%**********Summary**********~%");
(format t "Total number of test cases = ~A~%" cew_Test_Count);
(format t "Total number of test cases in error = ~A~%" cew_Error_Count);

