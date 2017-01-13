;; print.el --- Skeleton for insert current language element

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

(define-skeleton php-echo
  "Insert an echo statement"
  ""
  '(setq str (skeleton-read "String: "))
  > "echo '" str "';" \n)

(define-skeleton php-print
  "Insert a print statement"
  ""
  '(setq str (skeleton-read "String? "))
  > "print(" str ");" \n)

(define-skeleton php-print_r
  "Insert a print_r statement"
  ""
  '(setq expression (skeleton-read "Expression: "))
  '(setq return (skeleton-read "Return (true | false): "))
  > "print_r(" expression ", " return ");")

(define-skeleton php-printf
  "Insert a printf statement. Output a formatted string"
  ""
  '(setq str (skeleton-read "String? "))
  > "printf(" str ");" \n)

(define-skeleton php-fprintf
  "Insert a fprintf statement"
  ""
  '(setq handle (skeleton-read "Handle: "))
  '(setq format (skeleton-read "Format: "))
  '(setq args (skeleton-read "Args: "))
  > "fprintf(" handle ", " format ", " args ");" \n)

(define-skeleton php-sprintf
  "Insert a sprintf statement. Return a formatted string"
  ""
  '(setq str (skeleton-read "String? "))
  > "sprintf(" str ");" \n)
