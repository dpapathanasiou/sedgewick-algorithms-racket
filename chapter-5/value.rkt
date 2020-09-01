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

(define value
  (λ (expression)
    (cond
      ((atom? expression) expression)
      ((eq? (operator expression) '+)
       (+ (value (1st-sub-exp expression))
          (value (2nd-sub-exp expression))))
      ((eq? (operator expression) '*)
       (* (value (1st-sub-exp expression))
          (value (2nd-sub-exp expression))))
      ((eq? (operator expression) '^)
       (expt (value (1st-sub-exp expression))
             (value (2nd-sub-exp expression))))
      (else '()))))

