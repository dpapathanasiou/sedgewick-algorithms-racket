#lang racket/base

(provide remove-member)

(define remove-member
  (λ (a lat)
    (if (null? lat) '()
        (if (eq? (car lat) a) (cdr lat)
            (cons (car lat) (remove-member a (cdr lat)))))))
