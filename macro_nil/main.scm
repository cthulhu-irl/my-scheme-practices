(define-syntax nil!
    (syntax-rules ()
        ((_ x)
            (set! x '()))))

(define a '(1 2 3 4))

(format #t "a: ~a\n" a)

(nil! a)

(format #t "a: ~a\n" a)

