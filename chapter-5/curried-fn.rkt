#lang racket/base

(provide eq?-c
         remove-member-f)

(define eq?-c
  (λ (x)
    (λ (y)
      (eq? x y))))

(define remove-member-f
  (λ (test?)
    (λ (a lat)
      (if (null? lat) '()
          (if (test? (car lat) a) (cdr lat)
              (cons (car lat)
                    ((remove-member-f test?) a (cdr lat))))))))
