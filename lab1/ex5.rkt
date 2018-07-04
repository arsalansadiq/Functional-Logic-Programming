#lang racket


(define (area-of-pipe-one-def radius height thickness)
  (+
   (* 2 pi radius height)
   (* 2 pi (+ radius thickness) height)
   (* 2 pi (-(*(+ radius thickness)(+ radius thickness))(* radius radius)))))

(define (area-of-inner-cylinder radius height)
  (* 2 pi radius height))

(define (area-of-whole-cylinder radius thickness height)
  (* 2 pi (+ radius thickness) height))

(define (base-Area radius thickness)
  (* pi (-(*(+ radius thickness)(+ radius thickness))(* radius radius))))

(define (area-of-pipe radius height thickness)
  (+
   (area-of-inner-cylinder radius height)
   (area-of-whole-cylinder radius thickness height)
   (* 2 (base-Area radius thickness))))
   
   