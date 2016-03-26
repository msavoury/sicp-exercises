(define (func-recur n)
	(if (< n 3)
		n
		(+ (func-recur (- n 1))
		   (* 2 (func-recur (- n 2)))
		   (* 3 (func-recur (- n 3))))))

(define (func-iter n)

  (define (func-iter-inner a b c n)
	(cond   ((= n 0) a)
		((= n 1) b)
		((= n 2) c)
		(else (func-iter-inner b c (+ c (* 2 b) (* 3 a))(- n 1)))))	
  (func-iter-inner 0 1 2 n)
)
