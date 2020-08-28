#lang racket/base

(provide times)

(define times
  (λ (n m)
    (if (zero? m) 0
        (+ n (times n (sub1 m))))))
