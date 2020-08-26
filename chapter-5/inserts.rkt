#lang racket/base

(provide insert-r
         insert-l
         multi-insert-r
         multi-insert-l)

(define insert-r
  (λ (insert-atom current-atom lat)
    (if (null? lat) '()
        (if (eq? (car lat) current-atom)
            (cons current-atom
                  (cons insert-atom (cdr lat)))
            (cons (car lat)
                  (insert-r insert-atom current-atom (cdr lat)))))))

(define insert-l
  (λ (insert-atom current-atom lat)
    (if (null? lat) '()
        (if (eq? (car lat) current-atom)
            (cons insert-atom lat)
            (cons (car lat)
                  (insert-l insert-atom current-atom (cdr lat)))))))

(define multi-insert-r
  (λ (insert-atom current-atom lat)
    (if (null? lat) '()
        (if (eq? (car lat) current-atom)
            (cons current-atom
                  (cons insert-atom
                        (multi-insert-r insert-atom current-atom (cdr lat))))
            (cons (car lat)
                  (multi-insert-r insert-atom current-atom (cdr lat)))))))

(define multi-insert-l
  (λ (insert-atom current-atom lat)
    (if (null? lat) '()
        (if (eq? (car lat) current-atom)
            (cons insert-atom
                  (cons current-atom
                        (multi-insert-l insert-atom current-atom (cdr lat))))
            (cons (car lat)
                  (multi-insert-l insert-atom current-atom (cdr lat)))))))
