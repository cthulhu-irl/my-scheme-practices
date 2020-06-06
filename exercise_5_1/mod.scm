(define (xabs n) (if (< n 0) (- 0 n) n))
(define (digit-to-char n)
            (if (and (< n 127) (> n 32))
                (integer->char n)
                #f))

(display "abs(-2) : ") (display (xabs -2)) (display "\n")
(display "abs(2)  : ") (display (xabs 2)) (display "\n")

(display "digit-to-char(120) : ") (display (digit-to-char 120))
(display "\n")

(display "digit-to-char(150) : ") (display (digit-to-char 150))
(display "\n")
