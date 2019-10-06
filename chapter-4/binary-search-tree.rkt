#lang racket/base

(provide node
         node-value
         list->tree
         inorder-traversal
         preorder-traversal
         postorder-traversal)

(struct node (value left right)
  #:transparent
  #:mutable)

(define (make-child value)
  (node value '() '()))

(define (insert tree value)
  (if (null? tree)
      (make-child value)
      (let ([root-value (node-value tree)])
        (cond
          [(< value root-value)
           (if (null? (node-left tree))
               (set-node-left! tree (make-child value))
               (insert (node-left tree) value))]
          [(> value root-value)
           (if (null? (node-right tree))
               (set-node-right! tree (make-child value))
               (insert (node-right tree) value))]
          [else tree])
        tree)))

(define (list->tree lst)
  (define (l->t l a)
    (if (null? l)
        a
        (l->t (cdr l) (insert a (car l)))))
  (l->t lst '()))

(define (inorder-traversal tree)
  (let ([nodes '()])
    (unless (null? (node-left tree))
      (set! nodes (append nodes (inorder-traversal (node-left tree)))))
    (set! nodes (append nodes (list tree)))
    (unless (null? (node-right tree))
      (set! nodes (append nodes (inorder-traversal (node-right tree)))))
    nodes))

(define (preorder-traversal tree)
  (let ([nodes '()])
    (set! nodes (append nodes (list tree)))
    (unless (null? (node-left tree))
      (set! nodes (append nodes (preorder-traversal (node-left tree)))))
    (unless (null? (node-right tree))
      (set! nodes (append nodes (preorder-traversal (node-right tree)))))
    nodes))

(define (postorder-traversal tree)
  (let ([nodes '()])
    (unless (null? (node-left tree))
      (set! nodes (append nodes (postorder-traversal (node-left tree)))))
    (unless (null? (node-right tree))
      (set! nodes (append nodes (postorder-traversal (node-right tree)))))
    (set! nodes (append nodes (list tree)))
    nodes))