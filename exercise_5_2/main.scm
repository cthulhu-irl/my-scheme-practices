(define (all-pos-prod a b c)
    (if (and (> a 0) (> b 0) (> c 0))
        (* a b c)
        #f
    )
)

(define (any-neg-prod a b c)
    (if (or (< a 0) (< b 0) (< c 0))
        (* a b c)
        #f
    )
)

(format #t "all-pos-prod(1 2 3): ~a\n" (all-pos-prod 1 2 3))
(format #t "all-pos-prod(1 -2 3): ~a\n" (all-pos-prod 1 -2 3))

(format #t "any-neg-prod(1 2 3): ~a\n" (any-neg-prod 1 2 3))
(format #t "any-neg-prod(1 -2 3): ~a\n" (any-neg-prod 1 -2 3))
(format #t "any-neg-prod(-1 -2 3): ~a\n" (any-neg-prod -1 -2 3))

