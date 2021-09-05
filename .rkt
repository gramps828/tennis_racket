#lang racket
;"Avagadors number is \"6.02e+23\" "

;(define pie 3)

;(define (piece str)
  ;(substring str 0 pie))

;(piece "key lime")

(define (bake flavor)
  printf "preheating oven...\n" string-append flavor " pie")

;(bake "apple")

(define (nobake flavor)
  string-append flavor "green")

;(nobake "machine")

;(printf (string-append "rope, " "twine, " "yarn"))

;(printf(substring "corduroys" 0 4))

;(string-prefix? "shoelace" "shoe")

;(string-suffix? "asdasd21" "21")

;(string? "my name is Carl")

;(string? 32)

;(sqrt 16)

;(equal? (+ 6 1) 7)

;(if (equal? 2 3)
;  "2 and 3 are equal"
;  "2 and 3 are not equal")

;(if (number? 2)
;  "2 is a number"
;  "2 is not number")

(define (reply s)
  (if (string-prefix? s "hello ")
    "hi"
    "what?"))
;(reply "hello racket")

(define (reply-non-string s)
  (if (and (string? s)
          (string-prefix? s "hello ")
          (string-suffix? s "!"))
      "Hi"
      "huh?"))

;(reply-non-string "hello my dude!")

(define (cond-test s)
  (cond
    [(string-prefix? s "Hello")
      "Hi!"]
    [(string-prefix? s "goodbye")
      "bye"]
    [else "I\'ll cal you!"]))

;(cond-test "my friends")

(define (twice f v)
  (f (f v)))

;(twice (lambda (s) (string-append s "?!"))
  ;"hello")

(define (make-add-suffix s2)
  (lambda (s) (string-append s s2)))

;(twice (make-add-suffix "!") "hello")

(define (converse s)
  (define (starts? s2)
    (define spaced-s2 (string-append s2 " "))
    (string-prefix? s spaced-s2))
  (cond
  [(starts? "hello") "hi"] ;s2 equal? "hello" #t
  [(starts? "goodbye") "bye"] ;s2 equal? "goodbye" #t
  [else "huh"]))

;(converse "hello world")
;(converse "goodbye my sunshine")

;(let ([x (random 4)]
;      [o (random 4)])
;    (cond
;      [(> x o) "x wins"]
;      [(> o x) "o wins"]
;      [else "cat's game"]))

;(let* ([x (random 4)]
;       [o (random 4)]
;       [diff (number->string (abs (- x o)))])
;    (cond
;      [(> x o) (string-append "x wins by " diff)]
;      [(> o x) (string-append "o wins by " diff)]
;      [else "cat's game"]))


;(list "red" "green" "blue")
;(print list) ;(printf...) is only for strings?

;(length (list "red" "green" "blue"))

;(list-ref (list "red" "green" "blue") 2)

;(append (list "red" "green" "blue") (list "1" "2"))

;(reverse (append (list "red" "green" "blue") (list "1" "2")))

;(member "tree" (append (list "red" "green" "blue") (list "1" "2")))


;(map sqrt (list 1 4 9 16))

;(map (lambda (i)
;        (string-append i "!"))
;      (list "peanuts" "popcorn" "crackerjack"))


;(map (lambda (s n) (substring s 0 n))
;      (list "peanuts" "popcorn" "crackerjack")
;      (list 6 3 7))

;(filter string? (list "a" "b" 6))

;(filter negative? (list 1 2 10 -1 4))

;(foldl (lambda (elem v)
;        (+ v (* elem elem)))
;      0
;      '(1 2 3)) ; + 0 1 4 9 or + 0 9 4 1?

;(rest (list 1 2 3))

;empty

;(cons "head" empty)

;(empty? (cons "lettuce" (cons "hat" empty)))

;(define (my-length lst)
;  (cond
;    [(empty? lst) 0]
;    [else (+ 1 (my-length (rest lst)))]))

;(my-length (list "hello" "my love"))

;(define (my-map f lst)
;  (cond
;  [(empty? lst) empty]
;  [else (cons (f (first lst))
;      (my-map f (rest lst)))]))

;(my-map string-upcase (list "ready" "set" "go"))

;(define (my-length lst)
;  (define (iter lst len)
;    (cond
;    [(empty? lst) len]
;    [else (iter (rest lst)(+ len 1))]))
;  (iter lst 0))

;(define (my-map f lst)
;  (define (iter lst backward-result)
;    (cond
;      [(empty? lst) (reverse backward-result)]
;      [else (iter (rest lst)
;        (cons (f (first lst))
;          backward-result))]))
;  (iter lst empty))

(define (remove-dups l)
  (cond
    [(empty? l) empty]
    [(empty? (rest l)) l]
    [else
      (let ([i (first l)])
        (if (equal? i (first (rest l)))
          (remove-dups (rest l))
          (cons i (remove-dups (rest l)))))]))

(remove-dups (list "a" "b" "b" "b" "c" "c"))

;(cons 1 2)

;(cons "banana" "split")

;(car (cons 1 2))

;(cdr (cons 1 2))

;(pair? empty)

;(pair? (list 1 2 3))

;(cons (list 2 3) 1)

;(cons 1 (list 2 3))

;'(1 . (2 ))

;(list (list 1) (list 2 3) (list 4))

;(quote ((("red" 1)) ()("green" "blue")))
