# Discounted Cash Flow Calculator

**Note: For now, this project requires the [nocell prototype implementation](https://github.com/alan-turing-institute/nocell-prototype).  The most recent nocell development is in the current [nocell](https://github.com/alan-turing-institute/nocell) repository (which is incompatible with the prototype implementation).**

Nocell is a language for building probabilistic spreadsheets.

This repository contains a calculator for valuing a company with
[discounted cash flow analysis](https://en.wikipedia.org/wiki/Discounted_cash_flow), written in nocell.

## Installing the dependencies

1. Make sure that [Racket](https://racket-lang.org/) (version 7.1 or
   later) is installed.
   
1. Clone nocell-prototype
   ```sh
   git clone https://github.com/alan-turing-institute/nocell-prototype
   ```
   
1. Install the nocell prototype as a Racket package
   ```sh
   cd nocell-prototype
   raco pkg install
   ```

## Running the model

- Run `racket valuation-1.rkt`
- A spreadsheet `valuation-1.fods` is produced as output (in the 'flat' 
  [OpenDocument Spreadsheet](http://opendocument.xml.org/) file format), which should open with LibreOffice
  (but not MS Excel).
- Look in `valuation-1.rkt` to understand the output it writes to stdout.

## Package contents

  - `discounted-cash-flow.nocell` is a module that provides a routine
    for computing a DCF  
  - `valuation-1.rkt` is an example of using it to perform a DCF
    valuation for a fictitious company.
