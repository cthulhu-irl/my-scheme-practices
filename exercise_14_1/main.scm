(define (vec-inner-prod vec1 vec2)
    (let ((rvec
            (make-vector
                (if (< (vector-length vec1) (vector-length vec2))
                    (vector-length vec1)
                    (vector-length vec2)))))
        (let loop((k (- (vector-length rvec) 1)))
            (if (< k 0)
                rvec
                (begin
                    (vector-set!
                        rvec
                        k
                        (* (vector-ref vec1 k) (vector-ref vec2 k)))
                    (loop (- k 1)))))))

(display "\n")

(format #t "(vec-inner-prod #() #(2 3 4 5)): ~a\n"
    (vec-inner-prod #() #(2 3 4 5)))

(format #t "(vec-inner-prod #(1 2 3 4) #(2 3 4 5)): ~a\n"
    (vec-inner-prod #(1 2 3 4) #(2 3 4 5)))

(format #t "(vec-inner-prod #(1 2 3 4) #(2 3)): ~a\n"
    (vec-inner-prod #(1 2 3 4) #(2 3)))

