#lang racket

(require rackunit)

(module test-example nocell
  (provide result)
  (require "combinatorics.nocell")
  
  (define result (binomial-coeff 50 30)))

(require rackunit
         nocell/util
         'test-example)

(module+ test
  (check-equal? (stack-top-val result) 47129212243960))
