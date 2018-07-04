#lang racket

;; SYSC 3101 Winter 2018 Lab 3

;; Code for Exercise 1

(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds")))

;; code for Excercise 2
(define (make-accumulator a)
  (lambda (x)
    (begin (set! a (+ x a)) a)))
;; Code for Exercise 3

(define (make-account balance)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  
  (define (dispatch msg)
    (cond ((eq? msg 'withdraw) withdraw)
          ((eq? msg 'deposit) deposit)
          (else (error "Unknown request -- make-account" msg))))
  
  dispatch)

;;code for exercise 4
(define (make-password-account balance symbol)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  
  (define (dispatch pass msg)
    (if (not(eq? pass symbol))(error "Incorrect password" pass)
        (cond ((eq? msg 'withdraw) withdraw)
              ((eq? msg 'deposit) deposit)
              (else (error "Unknown request -- make-account" msg)))))
  
  dispatch)

;; Code for Exercise 5

(define (make-account-with-let initial-balance)
  (let ((balance initial-balance))
    
    (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))
    
    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)
    
    (define (dispatch msg)
      (cond ((eq? msg 'withdraw) withdraw)
            ((eq? msg 'deposit) deposit)
            (else (error "Unknown request -- make-account" msg))))
    
    dispatch))

;;Excercise 6
(define (make-password-account-monitored balance symbol)
  (let ((counter 0))
    (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))
    (define (call-the-cops)
      "Calling the cops")
    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)
  
    (define (dispatch pass msg)
      (cond [(not(eq? pass symbol))((begin (set! counter (+ counter 1)))(error "Incorrect password" pass))]
            [else (
                   (cond ((eq? msg 'withdraw) withdraw)
                         ((eq? msg 'deposit) deposit)
                         (else (error "Unknown request -- make-account" msg))))])
      (cond (eq? counter 7) (call-the-cops)))
  
    dispatch))
