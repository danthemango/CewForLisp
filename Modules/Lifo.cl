
;; #! /usr/bin/gcl -f

;; developed by Daniel Guenther
;; Lifo = Last in first out
;; test implementation of a stack in lisp

;; (new)
;; returns a new list
(defun new()
   ()
)

;; (size L)
;; returns the size of lifo L
(defun size (L)
   (length L)
)

;; (psh L N)
;; pushes element N on top of lifo L
(defun psh (L N)
   (cons N L)
)

;; (top L)
;; returns the top element of L
(defun top (L)
   (car L)
)
