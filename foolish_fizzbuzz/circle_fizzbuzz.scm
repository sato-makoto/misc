#!/usr/bin/env gosh
(define fzlist
  '#0=(#f #f "fizz" #f "buzz"
	  "fizz" #f #f "fizz" "buzz"
	  #f "fizz" #f #f "fizzbuzz"
	  . #0#))

(define cdr_num
  (lambda (num list)
    (cond
     ((= num 1) list)
     (else
      (cdr_num (- num 1)
	       (cdr list))))))

(define fz
  (lambda (num list)
    (cond
     ((eq? (car
	    (cdr_num num fzlist))
	   #f)
      num)
     (else
      (car (cdr_num num fzlist))))))

(define fizzbuzz
  (lambda (num)
    (cond
     ((= num 1 ) (print 1))
     (else
      (print (fz num fzlist))
      (fizzbuzz (- num 1))))))

(fizzbuzz 31)
