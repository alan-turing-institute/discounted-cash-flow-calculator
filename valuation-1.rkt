#lang racket

(module valuation nocell
  (provide result)

  (require "discounted-cash-flow.nocell")
  
  (define years           #(2010 2011 2012 2013))
  (define cash-flow       #(-100  -50  150  500))
  (define terminal-growth 0.03)
  (define discount-rate   0.1)

  (define result
    (dcf-valuation years cash-flow terminal-growth discount-rate)))


(require 'valuation
         nocell/cell
         nocell/grid)

;; At this point the valuation is known:
;;
(println (stack-top-val result))

;; From the nocell result, we can make a "sheet":
;;
(define result-sheet (stack->sheet result))

(newline)
(println result-sheet)

;; We will then be able to use one of the backends to export this
;; model as a spreadsheet (in some format)

;; One backend, sheet-eval, simply evaluates the model, returning
;; another sheet whose cells contain values
;;
(newline)
(println (sheet-eval result-sheet))

;; Other backends allow us to produce spreadsheet models in a variety
;; of formats (although currently just ods)...
;; 
(sheet-write-ods result-sheet "valuation-1.fods")

