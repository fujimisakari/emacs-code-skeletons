;; standard.el --- Skeleton for insert current language element

;; Copyright (C) 2018 by Ryo Fujimoto

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

(define-skeleton go-fmt.Print
  "Insert a fmt.Print statement."
  ""
  '(setq value (skeleton-read "value? "))
  > "fmt.Print(" value ")")

(define-skeleton go-fmt.Println
  "Insert a fmt.Println statement."
  ""
  '(setq value (skeleton-read "value? "))
  > "fmt.Println(" value ")")

(define-skeleton go-fmt.Printf
  "Insert a fmt.Printf statement."
  ""
  '(setq value (skeleton-read "value? "))
  > "fmt.Printf(" value ")")

(define-skeleton go-fmt.Sprintf
  "Insert a fmt.Sprintf statement."
  ""
  > "fmt.Sprintf(\"%s\", )")

(define-skeleton go-for
  "Insert a for statement."
  ""
  > "for i := 1; i < 1000; i += 1 {}")

(define-skeleton go-for-range
  "Insert a for statement."
  ""
  > "for i := range items {}")
