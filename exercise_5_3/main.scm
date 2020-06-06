(define (score-to-grade score)
    (cond
        ((<  score 0)  #f)
        ((>= score 80) "A")
        ((>= score 60) "B")
        ((>= score 40) "C")
        (else          "D")
    )
)

(format #t "score-to-grade(100):  ~a\n" (score-to-grade 100))
(format #t "score-to-grade(90):   ~a\n" (score-to-grade 90))
(format #t "score-to-grade(41):   ~a\n" (score-to-grade 41))
(format #t "score-to-grade(21):   ~a\n" (score-to-grade 21))
(format #t "score-to-grade(79):   ~a\n" (score-to-grade 79))
(format #t "score-to-grade(0):    ~a\n" (score-to-grade 0))
(format #t "score-to-grade(-100): ~a\n" (score-to-grade -100))

