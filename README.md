sicp-exercises
==============

My working through selected exercises in the Structure and Interpretation of Computer Programs


# Start Up
- Use ```mit-scheme``` to start the interpreter

# Load file
```
To load a source file (i.e. "foo.scm") from inside of the scheme repl:

]=> (load "foo.scm")
```

# Notes

# Chapter 1

*define* - used to define variable and functions
```
(define pi 3.14)

(define (square x) (* x x))
```

## Applicative Order vs Normal Order
 - Applicative Order: Evaluate the arguments then apply
 - Normal Order: Fully expand then reduce

Normal order can be less efficient because of the fact that sometimes the same expressions will be evaluated multiple times as in the following example:

```
Applicative Order
(square (+ 7 1))
(square (8))
(64)

Normal Order
(square (+ 7 1))
(* (+ 7 1) (+ 7 1))
(* 8 8)
(64)

```

*cond* - similar to a 'switch' statement
```
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

If none of the conditions match, the value returned is undefined.  This can be mitigated with an else clause:

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))
```

*if* 
```
(if <predicate> <consequent> <alternative>)

(define (abs x)
  (if (< x 0)
  (- x) x))

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

*list* - create a list out of the params
```
(list 1 3 4 6)
//will return:
(1 3 4 6)
```

*cons* - create a pair of the two params
```
(cons 1 56)
//
(1 56)
```

*car* - return the head of a list
```
(car (list 1 3 4 5))
//returns 1
```

*cdr* - return the tail of a list
```
(cdr (list 1 3 4 5))
//returns (3 4 5)
```
