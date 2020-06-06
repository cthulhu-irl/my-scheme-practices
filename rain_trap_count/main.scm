(define (f lst level)
    (if (null? lst)
        0
        (let loop((lstx lst) (tmp 0) (sum 0) (met #f))
            (if (null? lstx)
                sum
                (let ((first (car lstx)) (rest (cdr lstx)))
                    (if (< first level)
                        (loop rest (1+ tmp) sum met)
                        (loop
                            rest
                            0
                            (+ sum tmp
                                (if (and
                                        (not met)
                                        (> first level)
                                    )
                                    (f lstx (+ 1 level))
                                    0
                                )
                            )
                            (or met (> first level))
                        )))))))

(define (rain-trap-count lst) (f lst 0))

(format #t "result: ~a\n"
    (rain-trap-count '(0 1 0 2 1 0 1 3 2 1 2 1)))

