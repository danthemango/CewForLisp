changecom(`;;')

define(cew_Variables, 
`
(setq cew_Test_Count 0)
(setq cew_Error_Count 0)'
)

define(cew_Summary, 
`
(format t "~%**********Summary**********~%");
(format t "Total number of test cases = ~A~%" cew_Test_Count);
(format t "Total number of test cases in error = ~A~%" cew_Error_Count);'
) 
define(cew_Ecase, 
   `(format t "cew_Ecase under construction~%");
'
)

define(cew_Ncase, 
`
(incf cew_Test_Count)
$2
(setq xact $3)
(setq xexp $4)
(if (not (equal xact xexp))
   (progn
      (incf cew_Error_Count)
      (format t "Test Case ERROR (Ncase) in script at line number ~A~%" $1)
      (format t "Actual Value is ~A~%" xact)
      (format t "Expected Value is ~A~%" xexp)
   )
)
'
)
