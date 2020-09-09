#lang racket/base

(provide value)

(define atom?
  (λ (a)
    (not (list? a))))

(define 1st-sub-exp
  (λ (expression)
    (car (cdr expression))))

(define 2nd-sub-exp
  (λ (expression)
    (car (cdr (cdr expression)))))

(define operator
  (λ (expression)
    (car expression)))

(define atom-to-function
  (λ (x)
    (cond
      ((eq? x '+) +)
      ((eq? x '*) *)
      ((eq? x '^) expt)
      (else -))))

(define value
  (λ (expression)
    (if (atom? expression) expression
        ((atom-to-function (operator expression))                 
         (value (1st-sub-exp expression))
         (value (2nd-sub-exp expression))))))

