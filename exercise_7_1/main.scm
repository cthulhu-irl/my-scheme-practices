(define (len ls)
    (if (null? ls)
        0
        (+ 1 (len (cdr ls)))))

(define (sum ls)
    (if (null? ls)
        0
        (+ (car ls) (sum (cdr ls)))))

(define (rm-item ls x)
    (if (null? ls)
        '()
        (let ((item (car ls)) (rest (cdr ls)))
            (if (= item x)
                (rm-item rest x)
                (cons item (rm-item rest x))))))

(define (find ls x i)
    (if (null? ls)
        #f
        (let ((first (car ls)) (rest (cdr ls)))
            (if (= first x)
                i
                (find rest x (+ i 1))))))

(define (index ls x) (find ls x 0))

; len
(format #t "(len (list)): ~a\n" (len (list)))
(format #t "(len (list 1 2 3 4)): ~a\n" (len (list 1 2 3 4)))
(display "\n")

; sum
(format #t "(sum (list)): ~a\n" (sum (list)))
(format #t "(sum (list 1)): ~a\n" (sum (list 1)))
(format #t "(sum (list 1 2 3)): ~a\n" (sum (list 1 2 3)))
(display "\n")

; rm-item
(format #t "(rm-item (list) 0): ~a\n" (rm-item (list) 0))
(format #t "(rm-item (list 1 2 3) 0): ~a\n" (rm-item (list 1 2 3) 0))
(format #t "(rm-item (list 1 2 3) 1): ~a\n" (rm-item (list 1 2 3) 1))
(format #t "(rm-item (list 1 2 3) 2): ~a\n" (rm-item (list 1 2 3) 2))
(format #t "(rm-item (list 1 2 3) 3): ~a\n" (rm-item (list 1 2 3) 3))
(display "\n")

; find
(format #t "(find '() 0): ~a\n" (index '() 0))
(format #t "(find '(1 2 3 4) 0): ~a\n" (index '(1 2 3 4) 0))
(format #t "(find '(3 4 5 6) 4): ~a\n" (index '(3 4 5 6) 4))
(format #t "(find '(1 2 3 4) 1): ~a\n" (index '(1 2 3 4) 1))
(format #t "(find '(9) 9): ~a\n" (index '(9) 9))
(display "\n")

