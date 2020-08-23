#lang racket/base

(provide lat?)

(define (atom? a)
  (not (list? a)))

(define lat?
  (λ (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

