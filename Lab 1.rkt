; Patrik Sokolowski
; Lab 1

"Problem (3a)"
"(define (square x) (* x x))"

(define (square x) (* x x))

"Tests for 3a"

"(square 4)"
(square 4)

"(square -2)"
(square -2)

"(square (square 2))"
(square (square 2))

"Question 1"

"a"
"(define (dollars-to-pounds x) (* x 0.752))"
(define (dollars-to-pounds x) (* x 0.752))
"(dollars-to-pounds 1)"
(dollars-to-pounds 1)
"(dollars-to-pounds 175)"
(dollars-to-pounds 175)

"b"
"(define (pounds-to-euros x) (* x 1.192))"
(define (pounds-to-euros x) (* x 1.192))
"(pounds-to-euros 1)"
(pounds-to-euros 1)
"(pounds-to-euros 20)"
(pounds-to-euros 20)

"c"
"(define (euros-to-krona x) (* x 9.58))"
(define (euros-to-krona x) (* x 9.58))
"(euros-to-krona 1)"
(euros-to-krona 1)
"(euros-to-krona 20)"
(euros-to-krona 20)

"d
(define (dollars-to-krona x) ((dollars-to-pounds (pounds-to-euros (euros-to-krona x)))))
(dollars-to-krona 1)
"
"Question 2"

"a"
"(define (det2x2 a b c d)
  (- (* a d) (* c b)))"
(define (det2x2 a b
                c d)
  (- (* a d) (* c b)))

"(det2x2 -3 1 2 7)"
"should be -23"
(det2x2 -3 1 2 7)

"b"
"(define (invertible2x2 a b c d)
  (not (= 0 (det2x2 a b c d))))"
(define (invertible2x2 a b c d)
  (not (= 0 (det2x2 a b c d))))

"c"
(define (prod-invert a1 b1 c1 d1 a2 b2 c2 d2)
  (not (= 0
  ( *(det2x2 (+ (* a1 a2) (* b1 c2)) (+ (* a1 b2) (* b1 d2)) (+ (* c1 a2) (* d1 c2)) (+ (* c1 b2) (* d1 d2)))))))
"c p2"
(define (prod2-invert a1 b1 c1 d1 a2 b2 c2 d2)
  (not (= 0
  ( *(det2x2 (+ (* a1 a2) (* b1 c2)) (+ (* a1 b2) (* b1 d2)) (+ (* c1 a2) (* d1 c2)) (+ (* c1 b2) (* d1 d2)))))))

"d"
