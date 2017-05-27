(define (improve x y)
      (/ (+ (* 2 y)
	    (/ x (* y y)))
         3)) 

(define (good-enough x y)
        (< (abs(- (* y y y)
	      x))
           .1)
)

(define (cuberoot x y)
	(if (good-enough x y)
            y
            (cuberoot x (improve x y))))

(define (cuberooter x)
	(cuberoot x 1)
	)
