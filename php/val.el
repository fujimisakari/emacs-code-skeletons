;; val.el --- Skeleton for insert current language element

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

(define-skeleton php-gettype
  "Insert a gettype statement. Returns the type of variable"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "gettype(" variable ");" \n)

(define-skeleton php-settype
  "Insert a settype statement. Set the type of a variable"
  ""
  '(setq variable (skeleton-read "Variable: "))
  '(setq type (skeleton-read "Type: "))
  > "settype(" variable ", " type ");" \n)

(define-skeleton php-intval
  "Insert an intval statement."
  ""
  '(setq variable (skeleton-read "Variable: "))
  '(setq base (skeleton-read "Base: "))
  > "intval(" variable ", " base ");" \n)

(define-skeleton php-strval
  "Insert a strval statement. Get string value of a variable"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "strval(" variable ");" \n)

(define-skeleton php-floatval
  "Insert a floatval statement. Gets the float value of a variable"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "floatval(" variable ");" \n)

(define-skeleton php-boolval
  "Insert a boolval statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  "boolval(" variable ");")

(define-skeleton php-serialize
  "Insert an serialize statement. Generates a storable representation of a value"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "serialize(" variable ");" \n)

(define-skeleton php-unserialize
  "Insert an unserialize statement. Creates a php value from a stored representation"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "unserialize(" variable ");" \n)

(define-skeleton php-var_dump
  "Insert a var_dump statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  > "var_dump(" variable
  ( "Other variable? %s: "
    > ", " str )
  > ");")

(define-skeleton php-get_defined_vars
  "Insert a get_defined_vars statement. Returns an array of all defined variables"
  > "get_defined_vars();" \n)

(define-skeleton php-get_resource_type
  "Insert a get_resource_type statement. Returns the resource type"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "get_resource_type(" variable ");" \n)

(define-skeleton php-debug_zval_dump
  "Insert a debug_zval_dump"
  ""
  '(setq variable (skeleton-read "Variable: "))
  "debug_zval_dump(" variable ");" \n)

(define-skeleton php-var_export
  "Insert a var_export statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  '(setq return (skeleton-read "Return? "))
  > "var_export(" variable ", " return ");" \n)

(define-skeleton php-import_request_variables
  "Insert an import_request_variables statement. Import GET/POST/Cookie variables into the global scope"
  ""
  '(setq types (skeleton-read "Types: "))
  '(setq prefix (skeleton-read "Prefix: "))
  > "import_request_variables(" types ", " prefix ");" \n)

(define-skeleton php-unset
  "Insert an unset statement. Unset a given variable."
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "unset(" variable ");" \n)

(define-skeleton php-empty
  "Insert an empty statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  "empty(" variable ");")
