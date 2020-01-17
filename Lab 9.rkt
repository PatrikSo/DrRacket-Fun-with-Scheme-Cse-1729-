#lang racket
;Patrik Sokolowski
;Lab 9

(display "Problem 1\n")

(define (num-occurs sym lst)
  (cond ((null? lst) 0)
        ((and (symbol? (car lst)) (eq? sym (car lst)))
         (+ 1 (num-occurs sym (cdr lst))))
        (else
         (num-occurs sym (cdr lst)))))
"(num-occurs 'b '( a b c b a))"
(num-occurs 'b '( a b c b a))
"(num-occurs 'b '( a '(b c) b a))"
(num-occurs 'b '( a '(b c) b a))

;--------------------------------------------------------------
(display "Problem 2\n")

(define (remove-all x lst)
  (cond ((null? lst) lst)
        ((equal? (car lst) x) (remove-all x (cdr lst)))
        (else
         (cons (car lst) (remove-all x (cdr lst))))))

(define (freq-list lst)
  (define (freq-iter lst freq)
    (cond ((null? lst) freq)
          (else
           (freq-iter
            (remove-all (car lst) lst)
            (cons (cons (car lst)(num-occurs (car lst) lst))
                  freq)))))
  (freq-iter lst '()))

"(freq-list '( wow wowee wowa wowee wow wow ))"
(freq-list '( wow wowee wowa wowee wow wow ))
"(freq-list '( damn what kind of list is this? I mean a list is nice but damn ))"
(freq-list '( damn what kind of list is this? I mean a list is nice but damn ))

;--------------------------------------------------------------
(display "Problem 3\n")
(display "a\n")
"(define (create-heap vw-pair left right)
  (list vw-pair left right))"
(define (create-heap vw-pair left right)
  (list vw-pair left right))
"(define (create-vw-pair v w) (cons v w))"
(define (create-vw-pair v w) (cons v w))
"(define (weight vw-pair) (cdr vw-pair))"
(define (weight vw-pair) (cdr vw-pair))
"(define (value vw-pair) (car vw-pair))"
(define (value vw-pair) (car vw-pair))

(display "b\n")
"(define (h-min H) (car H))"
(define (h-min H) (car H))
(display "c\n")
"(define (left H) cadr H)"
(define (left H) cadr H)
(display "d\n")
"(define (right H) caddr H)"
(define (right H) caddr H)
(display "e\n")
"(define (insert vw-pair H)
  (define (max-vw-pair vw1 vw2)
    (if (> (weight vw1) (weight vw2))
        vw1
        vw2))
  (define (min-vw-pair vw1 vw2)
    (if (<= (weight vw1) (weight vw2))
        vw1
        vw2))

  (if (null? H)
      (create-heap vw-pair '() '())
      (let ((child-vw-pair (max-vw-pair vw-pair (h-min H)))
            (root-vw-pair (min-vw-pair vw-pair (h-min H))))
        (create-heap root-vw-pair
                     (right H)
                     (insert child-vw-pair (left H))))))"
(define (insert vw-pair H)
  (define (max-vw-pair vw1 vw2)
    (if (> (weight vw1) (weight vw2))
        vw1
        vw2))
  (define (min-vw-pair vw1 vw2)
    (if (<= (weight vw1) (weight vw2))
        vw1
        vw2))

  (if (null? H)
      (create-heap vw-pair '() '())
      (let ((child-vw-pair (max-vw-pair vw-pair (h-min H)))
            (root-vw-pair (min-vw-pair vw-pair (h-min H))))
        (create-heap root-vw-pair
                     (right H)
                     (insert child-vw-pair (left H))))))
(display "f\n")
"(define (insert-list-of-pairs vw-pair-list heap)
    (if (null? vw-pair-list)
        heap
        (insert (car vw-pair-list)
                (insert-list-of-pairs (cdr vw-pair-list) heap))))"
(define (insert-list-of-pairs vw-pair-list H)
    (if (null? vw-pair-list)
        H
        (insert (car vw-pair-list)
                (insert-list-of-pairs (cdr vw-pair-list) H))))
(display "g\n")
(define (combine-heaps H1 H2)
  (cond ((null? H1) H2)
        ((null? H2) H1)
        ((< (h-min H1) (h-min H2))
         (create-heap (h-min H1)
                      H2
                      (combine-heaps (left H1) (right H1))))
        (else
         (create-heap (h-min H2)
                      H1
                      (combine-heaps (left H2) (right H2))))))
        
"(define (remove-min H)
  (combine-heaps (left H) (right H)))"
(define (remove-min H)
  (combine-heaps (left H) (right H)))

"(define (combine-heaps H1 H2)
  (cond ((null? H1) H2)
        ((null? H2) H1)
        ((< (h-min H1) (h-min H2))
         (create-heap (h-min H1)
                      H2
                      (combine-heaps (left H1) (right H1))))
        (else
         (create-heap (h-min H2)
                      H1
                      (combine-heaps (left H2) (right H2))))))"

;--------------------------------------------------------------
(display "Problem 4\n")
"You can generate test cases depending on what you know is not working. For the
last problem set I did not know why my lists weren't doing what they were
supposed to, so I made test cases targeting what each part of the original
function handling the lists should do. After some tests worked and others
didn't you simply re-do the failed tests until you get what you need and
apply the new code. Once you break the original function into tiny bits it's
clear what each piece should do after some testing"

;--------------------------------------------------------------
(display "Problem 5\n")
(define (heapsort pair-list)
  (get-in-order (insert-list-of-pairs pair-list '())))

(define (get-in-order H)
  (cond ((null? H) '())
        (