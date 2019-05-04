(defun fib1(N)
	(if (< N 2)
		(progn
			(if (= N 0)
				0
				1
			)
		)
		(+ (fib1 (- N 1)) (fib1 (- N 2)))
	)
)

(trace fib1)
(print (fib1 2))
(terpri)
