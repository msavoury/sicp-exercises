(define (isEven? n)
 (= 0 (remainder n 2))
)
;;TODO:
;;Fix so that it works when something is raised to the 1st power
(define (fast-expn b n)
        (define (fast-iter-expn b n a)
          (cond ((= n 1) a)
                ((isEven? n) (fast-iter-expn b (/ n 2) (* a b b)))
                (else (fast-iter-expn b (- n 1) (* a b)))))
        (if (= n 0) 
            1
            (fast-iter-expn b (+ n 1) 1))

)

