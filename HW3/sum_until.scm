(define (sum_until x) 
	(cond 
		((eq? x 0) 0)
		 (else (+ x ( sum_until(- x 1))))))

(define (product-of-sum_until x) 
	(cond 
		((eq? x 0) 1)
		(else (* (sum_until x) (product-of-sum_until (- x 1))))
	)
)


(define (product-of-sum_until-helper x product_partial)
	(cond 
		((eq? x 0) product_partial)
		(else (product-of-sum_until-helper (- x 1) (* product_partial (sum_until x))))
	)
)


(define (product-of-sum_until-tr x)
	(product-of-sum_until-helper x 1)	
)
