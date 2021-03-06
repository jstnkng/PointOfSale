(load-option 'format)
(define taxRate 0.065)
(define (pos prev current)
	(cond( (eq? current 0)
		(begin
			(newline)
			(display "Subtotal: $")
			(display prev)
			(newline)
			(display "Tax: $")
			(display (* taxRate prev))
			(newline)
			(display "Total: $")
			(display (+ prev (* prev taxRate)))
			(newline)
		))
	(else
		(begin
			(display "$")
			(display (+ prev current))
			(newline)
			(newline)
			(display "Enter a value: $")		
			(pos (+ prev current) (read))
		)
	))
)
(define (register)
	(begin
		(display "Scheme Point-of-Sale")
		(newline)
		(display "Start transaction (exit with 0):")
		(newline)
		(newline)
		(display "Enter a value: $")
		(pos 0 (read)))
)

