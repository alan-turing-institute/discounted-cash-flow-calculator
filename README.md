# Nocell additional examples

[Nocell](https://github.com/alan-turing-institute/nocell) is a
language for building probabilistic spreadsheets.

This repository contains some examples of using nocell.  The treat
nocell as an installed Racket package (see below).

## Running the examples

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

1. Run as tests,
   ```sh
   raco test .
   ```
   or separately:
   ```sh
   racket valuation-1.rkt
   ```

