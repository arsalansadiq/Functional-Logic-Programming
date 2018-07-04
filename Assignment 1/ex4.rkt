#lang racket
;;Returns the quantity of items of the specified type of the triples of intger digit code
(define (count-of-items code type)
  ;;base case
  (if (= (/ code 1000) 0)
      (cond [(= (remainder code 100) type) (remainder code 100)]
            [else 0])
      ;;reccsion case
      (if (= (remainder code 100) type)
          (+ (remainder(exact-floor (/ code 100)) 10)
             (count-of-items (exact-floor (/ code 1000)) type))
          (count-of-items (exact-floor (/ code 1000)) type))))
