#lang racket

(define (interest amount)
  ( cond
     [(<= amount 1000) (* amount 0.04)]
     [(<= amount 5000) (* amount 0.045)]
     [(> amount 5000) (* amount 0.05)]))