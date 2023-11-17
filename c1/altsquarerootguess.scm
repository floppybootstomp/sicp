(define average-guess
    (lambda (x guess)
            (/ (+ x guess) 2)))

(define absval-guess
    (lambda (x)
            (if (< x 0) (- x) x)))


(define sqr-root
    (lambda (x)
            (define guess-threshold 0.001)
            (define improve-guess
                    (lambda (guess)
                            (average-guess guess (/ x guess))))
            (define good-enough-guess
                    (lambda (guess)
                            (< (absval-guess (- (/ x guess) guess)) guess-threshold)))
            (define try-guess
                    (lambda (guess)
                            (if (good-enough-guess guess)
                                guess
                                (try-guess (improve-guess guess)))))
            (define round-guess
                    (lambda (x)
                            (/ (floor (* x (/ 1 guess-threshold)))
                               (/ 1 guess-threshold))))
            (round-guess (try-guess 1))))
