;Patrik Sokolowski
;Lab 2

"1"
"a"
(define (pi)
  (* 2 (acos 0)))
"(pi)"
(pi)
"b"
"(define (square r) (* r r))"

"(define (area r)
  (* (pi) (square r)))"

"(area 3)"
(define (square r) (* r r))

(define (area r)
  (* (pi) (square r)))

(area 3)
"c"
(define (surface-area-of-sphere r)
  (* 4 (pi) (expt r 2)))
"(surface-area-of-sphere 4)"
(surface-area-of-sphere 4)
"d"
(define (volume-of-sphere r)
  (* (/ 4 3) (pi) (expt r 3)))
"(volume-of-sphere 4)"
(volume-of-sphere 4)
"2"
;the 'cond' version
(define (seq x)
  (cond ((= x 1) 1)
        ((= x 2) 2)
        ((= x 3) 3)
       ( else
        (+ (seq (- x 1))
        (- (seq (- x 2)))
        (seq (- x 3))))))

"(seq 4)"
(seq 4)

;the 'if' version
(define (seq y)
  (if ( < y 4)
      y
      (+ (seq (- y 1))
        (- (seq (- y 2)))
        (seq (- y 3)))))

"(seq 4)"
(seq 4)

"3"
(define (zeno x)
  (cond
    ((= x 0) 0)
    (else
     (+ (zeno (- x 1)) (expt 2 x)))))

"4"
"a"
(define (even-nn-int? x)
  (cond
    ((= x 0) #t)
    ((= x 1) #f)
    (else
     (even-nn-int? (- x 2)))))

"(even-nn-int? 4)"
(even-nn-int? 4)

"b"
(define (even-int? x)
  (cond
    ((< x 0) (even-nn-int? (* -1 x)))
    (else
     (even-nn-int? x))))

"(even-int? -4)"
(even-int? -4)

"c"
(define (odd-int? x)
  (cond
    ((= x 0) #f)
    ((= x 1) #t)
    (else
     (odd-int? (- x 2)))))
"(odd-int? 7)"
(odd-int? 7)
"(odd-int? 6)"
(odd-int? 6)