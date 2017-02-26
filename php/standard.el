;; standard.el --- Skeleton for insert current language element

;; Copyright (C) 2017 by Ryo Fujimoto

;; Author: Ryo Fujimoto <fujimisakri@gmail.com>
;; URL: https://github.com/fujimisakari/emacs-code-skeleton

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'php-mode)
(require 'skeleton)

(define-skeleton php-function
  "Insert a function statement."
  ""
  '(setq function (skeleton-read "Function name? "))
  '(setq argument (skeleton-read "Argument? "))
  > "function " function "(" argument
  ( "Another argument? %s: "
    > ", " str )
  > ")" \n
  > -4 "{" \n
  _ \n
  > -4 "}")

(define-skeleton php-if
  "Insert a if statement"
  ""
  '(setq condition (skeleton-read "Condition? "))
  > "if (" condition ")" \n
  > -4 "{" \n
  > _ \n
  > -4 "}" \n)

(define-skeleton php-if_else
  "Insert a if statement"
  ""
  '(setq condition (skeleton-read "Condition? "))
  > "if (" condition ")" \n
  > -4 "{" \n
  > _ \n
  ( "other condition, %s: "
    > -4 "}" \n
    > "else if(" str ")" \n
    > -4 "{" \n
    > _ \n)
  > -4 "}" \n
  > "else" \n
  > -4 "{" \n
  > _ \n
  resume:
  > -4 "}" \n)

(define-skeleton php-for
  "Insert a for statement."
  ""
  '(setq index (skeleton-read "Index variable? "))
  '(setq condition (skeleton-read "Condition? "))
  > "for (" condition "; " index "++)" \n
  > -4 "{" \n
  > _ \n
  > -4 "}" \n)

(define-skeleton php-foreach
  "Insert a foreach statement."
  ""
  '(setq value (skeleton-read "Value variable? "))
  '(setq array (skeleton-read "Array? "))
  > "foreach (" array " as " value ")" \n
  > -4 "{" \n
  > _ \n
  > -4 "}" \n)

(define-skeleton php-switch
  "Insert a switch statement."
  ""
  '(setq index (skeleton-read "Index variable? "))
  "switch (" index ") {" \n
  ("Some case? %s: "
   > -4 "case " str ":" \n
   > _ \n
   > "break;"\n)
   > -4 "}")

(define-skeleton php-try-catch
  "Insert a try catch statement"
  ""
  '(setq ex (skeleton-read "Exception? "))
  > "try" \n
  > -4 "{" \n
  _ \n
  > -4 "}" \n
  > "catch (" ex ")" \n
  > -4 "{" \n
  _ \n
  > -4 "}" \n)

(define-skeleton php-try-catch-finally
  "Insert a try catch statement"
  ""
  '(setq ex (skeleton-read "Exception? "))
  > "try" \n
  > -4 "{" \n
  _ \n
  > -4 "}" \n
  > "catch (" ex ")" \n
  > -4 "{" \n
  _ \n
  > -4 "}" \n
  > "finally" \n
  > -4 "{" \n
  _ \n
  > -4 "}" \n)

(define-skeleton php-include
  "Insert a include statement."
  ""
  '(setq file (skeleton-read "File? "))
  > "include_once '" file "';")

(define-skeleton php-include_once
  "Insert a include_once statement."
  ""
  '(setq file (skeleton-read "File? "))
  > "include_once '" file "';")

(define-skeleton php-require
  "Insert a require statement."
  ""
  '(setq file (skeleton-read "File? "))
  > "require '" file "';")

(define-skeleton php-require_once
  "Insert a require_once statement."
  ""
  '(setq file (skeleton-read "File? "))
  > "require_once '" file "';")

(define-skeleton php-current-class
  "Insert current class name if cursor in class context."
  > (let ((matched (php-get-current-element php--re-classlike-pattern)))
      (if matched
          (concat matched php-class-suffix-when-insert)
        "")))

(define-skeleton php-current-namespace
  "Insert current namespace if cursor in in namespace context."
  > (let ((matched (php-get-current-element php--re-namespace-pattern)))
      (if matched
          (concat matched php-namespace-suffix-when-insert)
        "")))

(define-skeleton php-define
  "Insert a define statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  '(setq value (skeleton-read "Value? "))
  "define(\"" variable "\",\"" value "\");")

(define-skeleton php-throw-exception
  "Insert a require_once statement."
  ""
  '(setq value (skeleton-read "Value? "))
  > "throw new \\Exception('" value "');")
