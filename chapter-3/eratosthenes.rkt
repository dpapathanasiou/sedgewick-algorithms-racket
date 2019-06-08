#lang racket/base

(define (sieve n)
  (let ((arr (make-vector n 1)))
    (for ([i (in-range 2 n)])
      (for ([j (in-range 2 (truncate (/ n i)))])
        (vector-set! arr (* i j) 0)))
    arr))


 


