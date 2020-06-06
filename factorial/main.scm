(define (fact n)
    (if (= n 1)
        1
        (* n (fact (- n 1)))
    )
)

(format #t "fact(1): ~a\n" (fact 1))
(format #t "fact(3): ~a\n" (fact 3))
(format #t "fact(5): ~a\n" (fact 5))
(format #t "fact(6): ~a\n" (fact 6))

