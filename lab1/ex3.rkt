#lang racket

(define (sum-coins p q r s)
(+
 (* 1 p)
 (* 5 q)
 (* 10 r)
 (* 25 s)
 ))