(define (isEven? n)
 (= 0 (remainder n 2)))

(define (halve a)
  (/ a 2))

(define (double a)
  (* a 2))

(define (multi a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        (else (if (isEven? b)
                (multi (double a) (halve b))
                (+ a (multi a (- b 1)))
                )

        )
  )
)
