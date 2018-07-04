#lang racket
;; Calculate the area of a circle with the specified radius.
(define (area-of-circle radius)
  (* pi radius radius))
;; Calculate the area of a ring whose radius is outer and
;; whose hole has a radius of inner.
(define (area-of-ring outer inner)
  (- (area-of-circle outer)
     (area-of-circle inner)))
