#lang racket
;;Recursive procedure f-recursive
(define (f-recursive n)
  (if (< n 4)
      n
      (+ (+ (* 2 (f-recursive(- n 1))) (* 3 (f-recursive(- n 3)))) (* 4(f-recursive(- n 5))))))

;;Interative process f-iterative
(define (f-iterative n)
  (f-iter n 4 -1 0 1 2 3)
  )

;; o is used to iterate starting from 4 (act as a counter)
(define (f-iter n o a b c d e)
  (if (< n 4)
      n
      (if (> o n)
          e
          (f-iter n (+ o 1) b c d e (+ (* 2 e) (* 3 c) (* 4 a))))))