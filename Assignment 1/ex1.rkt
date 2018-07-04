#lang racket

;;Excercise 1:
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-largest-squares x y z)
  ( cond
     [(and(>= x z) (>= y z)) (sum-of-squares x y)]
     [(and(>= x y) (>= z y)) (sum-of-squares x z)]
     [(and(>= y x) (>= z x)) (sum-of-squares y z)]))


;To test this
;> (sum-largest-squares 1 2 4)
;20
;> (sum-largest-squares 1 2 2)
;8
;> 