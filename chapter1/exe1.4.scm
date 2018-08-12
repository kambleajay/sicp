(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;;evaluation of (a-plus-abs-b 5 7)

;; ((if (> b 0) + -) a b)

;; ((if (> 7 0) + -) 5 7)

;; ((if #t + -) 5 7)

;; (+ 5 7)

;; 12
