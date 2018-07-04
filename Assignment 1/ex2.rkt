#lang racket
;;method a-b
(define (a-b a b)
  ((cond [(> b 0) +]
         [(= b 0) -]
         [else *]) a b))

;;The a-b method check the value of b to do different operations

;;Subtitution model: let a be 2 and b be 3
;;(a-b 2 3)
;;((cond [(> 3 0) +] [(= 3 0) -] [else *]) 2 3)
;;(+ 2 3)
;;5

;;Subtitution model: let a be 2 and b be 0
;;(a-b 2 0)
;;((cond [(> 0 0) +] [(= 0 0) -] [else *]) 2 0)
;;(- 2 0)
;;2

;;Subtitution model: let a be 2 and b be -1
;;(a-b 2 -1)
;;((cond [(> -1 0) +] [(= -1 0) -] [else *]) 2 -1)
;;(* 2 -1)
;;-2