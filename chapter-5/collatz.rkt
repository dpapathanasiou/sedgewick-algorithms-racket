#lang racket/base

(provide C)

(define C
  (λ (n [cycles 0])
    (if (<= n 1) cycles
        (if (even? n) (C (/ n 2) (add1 cycles))
            (C (add1 (* n 3)) (add1 cycles))))))
