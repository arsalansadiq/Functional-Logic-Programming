#lang racket
;;Recursive process (method name changed)
(define (sum-recursive fn a next b)
  (if (> a b)
      0
      (+ (fn a) (sum-recursive fn (next a) next b))))

(define (identity x) x)
(define (increment n) (+ n 1))

(define (sum-integers a b)
  (sum identity a increment b))

;; reimplement sum which is a iterative process
(define (sum fn a next b)
  (sum-iter fn a next b 0))

(define (sum-iter fn a next b c)
  (if (> a b)
      c
      (sum-iter fn (next a) next b (+ a c))))
