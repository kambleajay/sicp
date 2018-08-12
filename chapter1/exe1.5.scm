;; given two procedures

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; when this expression is evaluated

(test 0 (p))

;; applicative order 'evaluate the arguments and then apply' will never terminate as evaluating second argument (p) is never going to terminate

;; (test 0 (p))

;; (test 0 (p))

;; (test 0 (p))

;; but normal order 'fully expand and then reduce' will return 0 as it will not evaluate (p) until needed, and it is not needed in this case

;; (test 0 (p))

;; (if (= x 0) 0 y)

;; (if (= 0 0) 0 (p))

;; (if #t 0 (p))

;; 0
