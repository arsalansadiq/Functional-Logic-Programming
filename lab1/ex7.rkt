#lang racket

(define (b-square b)
  (* b b))
(define (four-a-c a c)
  (* 4 a c))

(define (how-many-solutions a b c)
  ( cond
     [(> (b-square b) (four-a-c a c) ) 2]
     [(= (b-square b) (four-a-c a c)) 1]
     [(< (b-square b) (four-a-c a c)) 0]))