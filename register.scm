(define taxRate 0.065)
(define (pos prev current)
	(cond( (eq? current -1)
		(begin
			(display 'subtotal:)
			(display prev)
			(newline)
			(display 'tax:)
			(display taxRate)
			(newline)
			(display 'total:)
			(display (+ prev (* prev taxRate)))
			(newline)
		))
	(else
		(begin
			(pos (+ prev current) (read))
		)
	))
)
