#lang racket/base

(provide gcd)

(define (gcd u v)
  (if (<= u 0)
      v
      (if (< u v)
          (gcd v u)
          (gcd (- u v) v))))