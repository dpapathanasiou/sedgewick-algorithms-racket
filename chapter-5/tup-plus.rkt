#lang racket/base

(provide tup-plus)

(define tup-plus
  (λ (tup1 tup2)
    (cond
      ((null? tup1) tup2)
      ((null? tup2) tup1)
      (else
       (cons (+ (car tup1) (car tup2))
             (tup-plus (cdr tup1) (cdr tup2)))))))

