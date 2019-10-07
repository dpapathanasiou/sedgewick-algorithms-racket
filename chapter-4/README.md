# Trees

## Definition

A *tree* is a non-empty collection of *vertices* and *edges* that satisfy certain requirements.

A *vertex* is a simple object (also referred to as a *node*) that can have a name and carry associated information, such as values or keys.

An *edge* is a connection between two vertices.

Each node, except the root, has exactly one node above it, which is called its *parent*; nodes directly below a node are its *children*.

Nodes with no children are called *leaf* or *terminal* nodes.

## Binary Trees

The simplest type of tree is the *[binary tree](https://en.wikipedia.org/wiki/Binary_tree)*, wherein each node has at most two children, at the left and right.

*[Binary Search Trees](https://en.wikipedia.org/wiki/Binary_search_tree)* have the property that the key in each node must be greater than or equal to any key stored in the left sub-tree, and less than or equal to any key stored in the right sub-tree.

## Traversal

Traversal is defined as the process of systematically visiting each node.

Traversals differ in the order in which nodes are visited:

* Inorder -> Left, Root, Right
* Preorder -> Root, Left, Right
* Postorder -> Left, Right, Root

### Acknowledgements / Inspiration

* [Creating A Binary Search Tree In Racket](https://learningtogetolder.wordpress.com/2013/08/14/creating-a-binary-search-tree-in-racket/)
* [A binary search tree implementation in Racket](https://gist.github.com/eu90h/f8b480cdc78bec5cdfdc)
* [Tree Traversals (Inorder, Preorder and Postorder)](https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/)
