(define e1 10)

(define e2 (+ 5 3 4))

(define e3 (- 9 1))

(define e4 (/ 6 2))

(define e5 (+ (* 2 4) (- 4 6)))

(define a 3)

(define b (+ a 1))

(define e6 (+ a b (* a b)))

(define e7 (= a b))

(define e8 (if (and (> b a) (< b (* a b)))
               b
               a))

(define e9 (cond ((= a 4) 6)
                 ((= b 4) (+ 6 7 a))
                 (else 25)))

(define e10 (+ 2 (if (> b a) b a)))

(define e11 (* (cond ((> a b) a)
                     ((< a b) b)
                     (else -1))
               (+ a 1)))
