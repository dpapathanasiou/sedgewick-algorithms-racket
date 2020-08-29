#lang racket/base

(provide remove-member-original
         remove-member-simplified)

(define (atom? n)
  (not (list? n)))
  
(define remove-member-original
  (λ (a lat)
    (cond
      ((null? lat) '())
      ((atom? (car lat))
       (if (equal? (car lat) a) (cdr lat)
           (cons (car lat) (remove-member-original a (cdr lat)))))
      (else
       (if (equal? (car lat) a) (cdr lat)
           (cons (car lat) (remove-member-original a (cdr lat))))))))

(define remove-member-simplified
  (λ (a lat)
    (if (null? lat) '()
        (if (eq? (car lat) a) (cdr lat)
            (cons (car lat) (remove-member-simplified a (cdr lat)))))))
