(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;(define sqrt-of-large-number (sqrt 10000000000000)) ;; blocks

(define sqrt-of-small-number (sqrt 0.0001)) ;; gives wrong answer - .03230844833048122 instead of 0.01

;;improvement

(define (new-good-enough? guess improved-guess)
  (< (abs (- guess improved-guess)) 0.00001))

(define (new-sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      guess
      (new-sqrt-iter (improve guess x) x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(define e1 (new-sqrt 10000000000000)) ;;3162277.66017

(define e2 (new-sqrt 0.0001)) ;;0.01
