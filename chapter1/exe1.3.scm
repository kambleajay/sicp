(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (smallest? a b c)
  (and (< a b) (< a c)))

(define (sum-of-squares-of-two-largest-nums x y z)
  (cond ((smallest? x y z) (sum-of-squares y z))
        ((smallest? y x z) (sum-of-squares x z))
        (else (sum-of-squares x y))))

(define answer
  (= (sum-of-squares-of-two-largest-nums 1 2 3) 13))
