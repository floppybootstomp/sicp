(define average-guess
    (lambda (x guess)
            (/ (+ x guess) 2)))

(define absval-guess
    (lambda (x)
            (if (< x 0) (- x) x)))

(define improve-guess
    (lambda (x guess)
            (average-guess guess (/ x guess))))

(define good-enough-guess
    (lambda (x guess)
            (< (absval-guess (- (/ x guess) guess)) 0.001)))

(define guess-square-root
    (lambda (x guess)
            (if (not (good-enough-guess x guess))
                (guess-square-root x (improve-guess x guess))
                guess)))

(define sqr-root
    (lambda (x)
            (round (guess-square-root x 1))))
