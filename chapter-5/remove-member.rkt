#lang racket/base

(provide remove-member)

(define remove-member
  (λ (a lat)
    (cond
      ((null? lat) '())
      (else
       (cond
         ((eq? (car lat) a) (cdr lat))
         (else
          (cons (car lat) (remove-member a (cdr lat)))))))))
