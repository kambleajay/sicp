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

(define e1 (sqrt 9))

;; Alyssa P. Hacker's new version of if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define e2 (new-if (= 2 3) 0 5))

(define e3 (new-if (= 1 1) 0 5))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x) x)))

(define e4 (new-sqrt-iter 1.0 9))

;; the attempt to calculate square root (as in e4) does not give intended results.
;; The expression will never terminate. Because, new-if is an ordinary procedure
;; and not a special form like if, its arguments will be evaluated before applying
;; the operator. But the else-clause is a recursive call to the function.
;; So the function is invoked again, the arguments are evaluated again and this will not end.
