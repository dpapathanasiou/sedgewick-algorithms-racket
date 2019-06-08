#lang racket/base

(provide primes)

(define (not-void? x)
  (not (void? x)))

(define (get-indices v)
  (for/list ([i (in-range 2 (vector-length v))])
    (when (= (vector-ref v i) 1)
      i)))

(define (sieve n)
  (let ((arr (make-vector n 1)))
    (for ([i (in-range 2 n)])
      (for ([j (in-range 2 (truncate (/ n i)))])
        (vector-set! arr (* i j) 0)))
    arr))

(define (primes n)
  (filter not-void? (get-indices (sieve n))))

 


