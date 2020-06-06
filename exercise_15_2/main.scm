(define-syntax decf!
    (syntax-rules ()
        ((_ x) (begin (set! x (- x 1)) x))
        ((_ x i) (begin (set! x (- x i)) x))))

(define a 5)

(format #t "      a: ~a\n" a)
(format #t "decf! a: ~a\n" (decf! a))
(format #t "decf! a: ~a\n" (decf! a))
(format #t "decf! a: ~a\n" (decf! a))

