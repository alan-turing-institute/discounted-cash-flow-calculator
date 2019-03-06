# Discounted Cash Flow Calculator

[Nocell](https://github.com/alan-turing-institute/nocell) is a
language for building probabilistic spreadsheets.

This repository contains a calculator for valuing a company with
[discounted cash flow analysis](https://en.wikipedia.org/wiki/Discounted_cash_flow), written in nocell.

It treats nocell as an installed Racket package (see below).

## Installing and running the example

1. Make sure that [Racket](https://racket-lang.org/) (version 7.1 or
   later) is installed.
   
1. Clone nocell
   ```sh
   git clone https://github.com/alan-turing-institute/nocell
   ```
   
1. Install nocell as a Racket package
   ```sh
   cd nocell
   raco pkg install
   ```

1. Run the model:
   ```sh
   racket valuation-1.rkt
   ```

## Package contents

  - `discounted-cash-flow.nocell` is a module that provides a routine
    for computing a DCF
    
  - `valuation-1.rkt` is an example of using it to perform a DCF
    valuation for a fictitious company.
