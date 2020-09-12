#lang racket/base

(provide factorial
         fibonacci)

(define Y
  (λ (f)
    ((λ (x) (x x))
     (λ (x) (f (λ (y) ((x x) y)))))))
   
(define fact
  (λ (f)
    (λ (n)
      (if (= n 0) 1
          (* n (f (sub1 n)))))))

(define factorial (Y fact))

(define nacci
  (λ (f)
    (λ (n)
      (cond
        ((= n 0) 0)
        ((= n 1) 1)
        (else
         (+ (f (- n 1))
            (f (- n 2))))))))

(define fibonacci (Y nacci))


