sicp-exercises
==============

My working through selected exercises in the Structure and Interpretation of Computer Programs


# Start Up
- Use ```mit-scheme``` to start the interpreter

# Load file
```
To load a source file (i.e. "foo.scm") from inside of scheme:

]=> (load "foo.scm")
```

#Notes

*define* - used to define variable and functions
```
(define pi 3.14)

(define (square x) (* x x))
```

*cond* - similar to a 'switch' statement
```
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

with an else clause:

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))
```

*and/or/not*
```

(and <e1 > ... <en >)
The interpreter evaluates the expressions <e> one at a time, in left-to-right order. If any <e> evaluates to false, the value of theandexpression is false, and the rest of the <e>’s are not evaluated. If all <e>’s evaluate to true values, the value of theandexpression is the value of the last one.
(or <e 1 > ... <e n >)
The interpreter evaluates the expressions <e> one at a time, in left-to-right order. If any <e> evaluates to a true value, that value is returned as the value of the or expression, and the rest of the <e>’s are not evaluated. If all <e>’s evaluate to false, the value of theorexpression is false.
(not <e>)
```

*lambda*
```
(lambda (<formal-parameters>) <body>)
;; function that takes a number and adds 4 to it
(lambda (x) (+ x 4))
```

*let*  - Used for defining placeholder variables
```
;General form:
(let ((<var 1 > <exp 1 >)
      (<var 2 > <exp 2 >) 
      (<var n > <exp n >))
<body>)
```
