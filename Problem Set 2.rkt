;Patrik Sokolowski
;Problem set 2

"Problem 1"
"a"
(define (even-sum x)
  (cond ((= x 0) 0)
        ((= (modulo x 2) 0)
            (+ x (even-sum(- x 2))))
        ( else
          (even-sum(- x 1)))))
"(even-sum 7)"
(even-sum 7)
"(even-sum 6)"
(even-sum 6)
"(even-sum 5)"
(even-sum 5)

"b"
"(even-sum 4)"
(even-sum 4)
"(even-sum 3)"
(even-sum 3)
"(even-sum 2)"
(even-sum 2)
"(even-sum 1)"
(even-sum 1)
"5, 6 and 7 already tested in 1.a, and yes it makes sense"

"c"
(define (sum-from-to a b)
  (cond ((> a b) 0)
        (else
         (+ b (sum-from-to a (- b 1))))))
"(sum-from-to 2 4)"
(sum-from-to 2 4)
"(sum-from-to 5 4)"
(sum-from-to 5 4)
"(sum-from-to 3 5)"
(sum-from-to 3 5)

(display "\n")
"problem 2"

(define (diff-prod k)
  (cond ((< k 0) "try a positive number")
        ((= k 1) 0)
        ((= k 2) (- 1 (/ 1 k)))
        ((> k 1)
         (* (- 1 (/ 1 k)) (diff-prod (- k 1))))))
"(diff-prod 4)"
(diff-prod 4)
"(diff-prod 10)"
(diff-prod 10)
"(diff-prod -1)"
(diff-prod -1)

(display "\n")
"problem 3"
"a"
(define (finite-sum-of-powers z k)
  (cond ((= k 0) 1)
        ((>= k 1)
         (+ (expt z k) (finite-sum-of-powers z (- k 1))))))
"(finite-sum-of-powers 2 3)"
(finite-sum-of-powers 2 3)
"(finite-sum-of-powers 2 1)"
(finite-sum-of-powers 2 5)
"b"
(define (first-value-k-or-higher z tol k)
  (if (<= (- (finite-sum-of-powers z k) (/ 1 (- 1 z))) tol)
      k
  (first-value-k-or-higher z tol (+ k 1))))

(define (terms-needed z tol)
  (first-value-k-or-higher z tol 0))

(terms-needed 0.005 0.001)
"c"
"it works based off of the size or scope you give the function. The larger scope the better as there is a more likelyhood that k hits the mark with less error"

(display "\n")
"problem 4"
"a"
(define (fin-alt-series k)
  (cond ((= k 0) 0)
        (else
         (+ (* (expt -1 k ) (/ 4.0 (- 1 (* 2 k)))) (fin-alt-series (- k 1))))))
"(fin-alt-series 3)"
(fin-alt-series 3)
"(fin-alt-series 5)"
(fin-alt-series 5)
"b"
"(fin-alt-series 100)"
(fin-alt-series 100)
"c"
"(fin-alt-series 100000)"
(fin-alt-series 100000)
"d"
"the function was called 100000 times, the only values expt
creates are 1 and -1"
"e"
(define negIndex -1)
(define (updateInd)
  (set! negIndex (* negIndex -1)))
(define (fin-alt-series-2 k)
  (cond ((= k 0) 0)
        (else
         (+ (* negIndex (/ 4.0 (- 1 (* 2 k)))) (fin-alt-series (- k 1))))))
"(fin-alt-series-2 3)"
(fin-alt-series-2 3)
"(fin-alt-series-2 5)"
(fin-alt-series-2 5)

(display "\n")
"Problem 5"
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))
"a"
(define (finite-mystery-series k)
  (cond ((= k 0) 1)
        ((= k 1) 1)
        (else
         (+ (/ 1 (factorial k)) (finite-mystery-series (- k 1))))))
"(define (finite-mystery-series k)
  (cond ((= k 0) 1)
        ((= k 1) 1)
        (else
         (+ (/ 1 (factorial k)) (finite-mystery-series (- k 1))))))"
"(finite-mystery-series 0)"
(finite-mystery-series 0)
"(finite-mystery-series 2)"
(finite-mystery-series 2)
"(finite-mystery-series 3)"
(finite-mystery-series 3)
"b"
"(finite-mystery-series 6)"
(finite-mystery-series 6)
"(finite-mystery-series 12)"
(finite-mystery-series 12)
"(finite-mystery-series 24)"
(finite-mystery-series 24)
"(finite-mystery-series 100)"
(finite-mystery-series 100)
"c"
"They will always approach their respective next number but will never reach it"