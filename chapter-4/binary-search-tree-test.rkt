#lang racket/base
 
(require rackunit
         "binary-search-tree.rkt")

(define (string->integer-list s)
  (map (λ(x) (char->integer x))
       (string->list s)))

(check-equal? (list->tree (string->integer-list "search"))
              (node 115 (node 101 (node 97 '() (node 99 '() '())) (node 114 (node 104 '() '()) '())) '()))
