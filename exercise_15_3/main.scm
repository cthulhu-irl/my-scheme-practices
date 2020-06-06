(define-syntax for
    (syntax-rules ()
        ((_ (i from to step) b ...)
            (let loop((i from))
                (when (< i to)
                    b ...
                    (loop (+ i step)))))
        ((_ (i from to) b ...)
            (for (i from to 1) b ...))))

(for (a 1 10)
    (display a)
    (display #\Space))
(display #\newline)

(for (a 1 10 2)
    (display a)
    (display #\Space))
(display #\newline)

