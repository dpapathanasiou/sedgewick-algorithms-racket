#lang racket/base
 
(require rackunit
         "binary-search-tree.rkt")

(define (string->integer-list s)
  (map (λ(x) (char->integer x))
       (string->list s)))

(check-equal? (list->tree (string->integer-list "search"))
              (node 115 (node 101 (node 97 '() (node 99 '() '())) (node 114 (node 104 '() '()) '())) '()))

; Traversal tests, given an example tree of:
;
;     1
;    / \
;   2   3
;  / \
; 4   5

(define example-tree
  (node 1 (node 2 (node 4 '() '()) (node 5 '() '())) (node 3 '() '())))

(define (extract-values nodes-list)
  (map (λ(x) (node-value x)) nodes-list))

(check-equal? (extract-values
               (inorder-traversal example-tree))
              '(4 2 5 1 3))

(check-equal? (extract-values
               (preorder-traversal example-tree))
              '(1 2 4 5 3))

(check-equal? (extract-values
               (postorder-traversal example-tree))
              '(4 5 2 3 1))
