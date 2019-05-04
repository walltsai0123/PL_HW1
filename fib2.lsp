(defun fib2(N a b)
	(if (< N 2)
		(if (= N 1)
			b
			a
		)
		(fib2 (- N 1) b (+ a b))
	)
)

(trace fib2)
(print (fib2 6 0 1))
(terpri)

