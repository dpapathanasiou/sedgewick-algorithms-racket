#lang racket/base

(provide < >)

(define <
  (λ (n m)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else
       (< (sub1 n) (sub1 m))))))

(define >
  (λ (n m)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else
       (> (sub1 n) (sub1 m))))))
