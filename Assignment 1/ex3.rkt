#lang racket
;;The method computes the sum of the odd digits of a positive integer
(define (sum-odd-digits a)
  (cond [(and (< (/ a 10) 1) (odd? a)) a]
        [(and (< (/ a 10) 1) (even? a)) 0]
        [else (if (odd? (remainder a 10))
                  (+ (remainder a 10) (sum-odd-digits (exact-floor(/ a 10))))
                  (sum-odd-digits (exact-floor(/ a 10))))]))