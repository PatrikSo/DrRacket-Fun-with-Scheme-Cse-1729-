;Patrik SOkolowski
;Lab 3

"Problem 1"
"a"
(define (fam n)
  ( if (= n 1)
       2
       (* 2 (fam (- n 1)))))
"(define (fam n)
  ( if (= n 1)
       2
       (* 2 (fam (- n 1)))))"
"(fam 10)"
(fam 10)
"(fam 3)"
(fam 3)
"b"
(define (total-fam n)
  (cond ((= n 1) 2)
        (else
         (+ (fam n) (total-fam (- n 1))))))
"(define (total-fam n)
  (cond ((= n 1) 2)
        (else
         (+ (fam n) (total-fam (- n 1))))))"
"(total-fam 10)"
(total-fam 10)
"(total-fam 3)"
(total-fam 3)



"Problem 2"
"a"
(define (pell-num n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((> n 1) (+ (* 2 (pell-num (- n 1))) (pell-num (- n 2))))))
"(pell-num 5)"
(pell-num 5)
"(pell-num 2)"
(pell-num 2)
"b"
(define (comp-pell-num n)
  (cond ((= n 0) 2)
        ((= n 1) 2)
        ((> n 1) (+ (* 2 (comp-pell-num (- n 1))) (comp-pell-num (- n 2))))))
"(define (comp-pell-num n)
  (cond ((= n 0) 2)
        ((= n 1) 2)
        ((> n 1) (+ (* 2 (comp-pell-num (- n 1))) (comp-pell-num (- n 2))))))"
"(comp-pell-num 5)"
(comp-pell-num 5)
"(comp-pell-num 2)"
(comp-pell-num 2)
"c"
(define (rationalApprox rootNum n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((> n 1) (/ (* 0.5 (comp-pell-num n)) (pell-num n)))))
"(define (rationalApprox rootNum n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((> n 1) (/ (* 0.5 (comp-pell-num n)) (pell-num n)))))"
"(rationalApprox 2 3)"
(rationalApprox 2 3)
"(rationalApprox 2 6)"
(rationalApprox 2 6)



"Problem 3"

(define (square x ) (* x x))

"a"
(define (fastexp base exp)
  (cond ((= exp 0) 1)
        ((= (modulo exp 2) 0) (square (* base (/ exp 2))))
        (else
          (* base (* base (- exp 1))))))
"(define (fastexp base exp)
  (cond ((= exp 0) 1)
        ((= (modulo exp 2) 0) (square (* base (/ exp 2))))
        (else
          (* base (* base (- exp 1))))))"
"(fastexp 2 2)"
(fastexp 2 2)
"(fastexp 2 3)"
(fastexp 2 3)
"(fastexp 2 4)"
(fastexp 2 4)

"b"
"fastexp is faster as it goes through less scenarios than the normal power function. By using recursion to solve a number with a power you multiply each and every base that's included in it's power. With fastexp you skip through a lot of the repetition."

"Problem 4"
"a"
(define (cont-frac x)
  (cond ((= x 1) 1)
        (else
         (+ 2 (cont-frac (- x 1))))))
"(define (cont-frac x)
  (cond ((= x 1) 1)
        (else
         (+ 2 (cont-frac (- x 1))))))"
"(cont-frac 2)"
(cont-frac 2)
"(cont-frac 3)"
(cont-frac 3)
"b"
(define (new-sqrt x n)
  (cond ((= n 1) 1)
        (else
         (+ 2 (/ (- x 1) (new-sqrt (- n 1) x))))))
"(define (new-sqrt x n)
  (cond ((= n 1) 1)
        (else
         (+ 2 (/ (- x 1) (new-sqrt (- n 1) x))))))"
"(new-sqrt 2 3)"
(new-sqrt 2 3)
"(new-sqrt 2 6)"
(new-sqrt 2 6)
