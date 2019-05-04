(defun diff(A B)
	(terpri)
	(setf L '())
	(setf R '())
	(let ((in(open B :if-does-not-exist nil)))
		(when in 
			(loop for line = (read-line in nil)
				while line do (setf L (append L (list line)))
			)
			(close in)
		)
	)
	(let ((in(open A :if-does-not-exist nil)))
		(when in 
			(loop for line = (read-line in nil)
				while line do 
					(progn
						(loop for x in L
							do
							(progn
								(if (equal line x)
									(loop
										(when (equal x (car L)) 
											(setf L (cdr L))										
											(return (format t " ~A~%" line)) 
										)
										(format t "+~A~%" (car L))
										(setf L (cdr L))
									)
									(if (equal x (car (last L)))
										(format t "-~A~%" line)
									)
								)
								(when (equal x line)
									(return 0)
								)
							)
						)
					)
			)
			(close in)
		)
	)
)

(diff "file1.txt" "file2.txt")

