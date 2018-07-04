#lang racket
(define (two-circumference radius)
  (* 2 pi radius radius))

(define (area-of-height radius height)
  (* 2 pi radius height))

(define (area-of-cylinder radius height)
  (+
   (two-circumference radius)
   (area-of-height radius height)))