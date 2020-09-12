#lang racket/base

(provide A)

(define A
  (λ (n m)
    (cond
      ((zero? n) (add1 m))
      ((zero? m) (A (sub1 n) 1))
      (else
       (A (sub1 n) (A n (sub1 m)))))))
