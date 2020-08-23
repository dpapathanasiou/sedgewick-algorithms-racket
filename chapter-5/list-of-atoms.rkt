#lang racket/base

(provide lat?)

(define lat?
  (λ (l)
    (cond
      ((null? l) #t)
      ((not (list? (car l))) (lat? (cdr l)))
      (else #f))))

