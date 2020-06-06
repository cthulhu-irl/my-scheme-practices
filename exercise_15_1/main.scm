(define-syntax when-not
    (syntax-rules ()
        ((_ pred b1 ...)
            (if (not pred)
                b1 ...))))

(when-not (= 2 12)
    (display "2 != 12\n"))

