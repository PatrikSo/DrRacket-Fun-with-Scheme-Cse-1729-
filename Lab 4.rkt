;Patrik Sokolowski
;Lab 4
"Problem 1"

(define (harmonic n)
  (if (= n 1)
      1.0
      (+ (/ 1 n) (harmonic (- n 1)))))

(harmonic 5)

"Problem 2"

(define (sum f n)
  (if (= n 1)
      (f 1)
      (+ (f n) (sum f (- n 1)))))

(define (harm-term n)
  (/ 1 n))

(define (harm-sum n)
  (sum harm-term n))

(harm-sum 5)

"Problem 3"

"a"
(define (g-sum f a b)
  (if (= a b)(f a)
      (+ (f b)(g-sum f a (- b 1)))))

"b"
;(lambda (x) (+ x 1))
(g-sum (lambda (x) (+ x 1)) 0 3)

"c"
(define (geometric-term k)
  (/ 1 (expt 2 k)))
(define (geom-series-np2 n)
  (g-sum geometric-term 0 n))
(geom-series-np2 1)
(geom-series-np2 4)

"d"
(define (convergent-series a b)
  (g-sum (lambda (x) (/ 1 (expt x 2))) a b))
(convergent-series 1 3)

"Problem 4"

"a"
(define (find sequence test n)
  (define (find-aux x found)
    (let ((fx (sequence x)))
      (if (test fx)
          (if (= (+ found 1) n)
              fx
              (find-aux (+ x 1) (+ found 1)))
          (find-aux (+ x 1) found))))
(find-aux 1 0))

(find (lambda (x) x) even? 3)
(find (lambda (x) x) odd? 3)
"b"
(find (lambda (x) x) even? 15)
(find (lambda (x) x) odd? 15)

"Problem 5"

"a"
(define (double x) (* 2 x))
(define (add-one x) (+ x 1))
(define (comp f g)
  (lambda (x) (f (g x)))) 
(define com (comp add-one double))
(com 3)
"b"
