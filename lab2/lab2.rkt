#lang racket
(define (sum-numbers numbers)
  (if (empty? numbers) 0 (+ (car numbers) (sum-numbers(cdr numbers)))))

(define (average numbers)
  (/ (sum-numbers numbers) (length numbers)))

(define (occurrences numbers n)
    (cond
    [(empty? numbers)0]
    [(equal? (car numbers) n) (+ 1 (occurrences (cdr numbers) n))]
    [else (occurrences (cdr numbers) n)]))

(define (convert list)
  (cond
    [(empty? list) 0]
    [else (+ (car list) (* 10 (convert (cdr list))))]))
(define (far-to-cel far)
  (* (- far 32) 5/9))

(define (convertFC list)
  (define (helper list result)
    (cond
      [(empty? list) result]
      [else (helper (cdr list)(cons (far-to-cel(car list)) result))]))
    (helper list '()))

(define (convertFCMap list)
  (map (lambda (x) (* (- x 32) 5/9)) (reverse list)))

(define (eliminate-threshold list n)
  
 (cond
   [(empty? list) '{}]
   [(<= (car list) n) (cons (car list) (eliminate-threshold (cdr list) n))]
   [else (eliminate-threshold (cdr list) n)]))
    