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

(define-skeleton js-console.log
  "Insert a console-log statement."
  ""
  '(setq value (skeleton-read "value? "))
  > "console.log(" value ");")

(define-skeleton js-if
  "Insert a if statement."
  > "if () {" \n
  > \n
  > -4 "}")

(define-skeleton js-for
  "Insert a for statement."
  ""
  '(setq array (skeleton-read "array? "))
  > "for (var i = 0, len = " array ".lengh; i < len; i += i ) {" \n
  > \n
  > -4 "}")

(define-skeleton js-function
  "Insert a function statement."
  ""
  '(setq name (skeleton-read "name? "))
  > "function " name "() {" \n
  > \n
  > -4 "}")

(define-skeleton js-lambda-function
  "Insert a lambda-function statement."
  > "function () {" \n
  > \n
  > -4 "}")

(define-skeleton js-immediate-function
  "Insert a immediate-function statement."
  > "(function () {" \n
  > \n
  > -4 "}());")
