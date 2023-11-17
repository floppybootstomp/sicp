(define square
    (lambda (x)
            (* x x)))

(define largest-sum-of-squares
    (lambda (x y z)
            (cond ((and (> x y) (> y z))
                   (+ (square x) (square y)))
                  ((and (> z x) (> x y))
                   (+ (square z) (square x)))
                  ((and (> z x) (> z y))
                   (+ (square y) (square z))))))
