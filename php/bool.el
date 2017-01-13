;; bool.el --- Skeleton for insert current language element

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

(define-skeleton php-is_string
  "Insert an is_string statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_string(" variable ");" \n)

(define-skeleton php-is_int
  "Insert an is_int statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_int(" variable ");" \n)

(define-skeleton php-is_double
  "Insert an is_double statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_double(" variable ");" \n)

(define-skeleton php-is_float
  "Insert an is_float statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_float(" variable ");" \n)

(define-skeleton php-is_integer
  "Insert an is_integer statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_integer(" variable ");" \n)

(define-skeleton php-is_long
  "Insert an is_long statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_long(" variable ");" \n)

(define-skeleton php-is_array
  "Insert an is_array statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_array(" variable ");" \n)

(define-skeleton php-is_bool
  "Insert an is_bool statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_bool(" variable ");" \n)

(define-skeleton php-is_numeric
  "Insert an is_numeric statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_numeric(" variable ");" \n)

(define-skeleton php-is_object
  "Insert an is_object statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_object(" variable ");" \n)

(define-skeleton php-is_null
  "Insert an is_null statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_null(" variable ");" \n)

(define-skeleton php-is_callable
  "Insert an is_callable statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_callable(" variable ");" \n)

(define-skeleton php-is_real
  "Insert an is_real statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_real(" variable ");" \n)

(define-skeleton php-is_resource
  "Insert an is_resource statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_resource(" variable ");" \n)

(define-skeleton php-is_scalar
  "Insert an is_scalar statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "is_scalar(" variable ");" \n)

(define-skeleton php-isset
  "Insert an isset statement"
  ""
  '(setq variable (skeleton-read "Variable: "))
  > "isset(" variable ");" \n)

(define-skeleton php-interface_exists
  "Insert a interface_exists statement."
  ""
  '(setq interface_name (skeleton-read "Interface Name: "))
  '(setq autoload (skeleton-read "Autoload: "))
  > "interface_exists(" interface_name ", " autoload ");" \n)

(define-skeleton php-is_a
  "Insert an is_a statement. Checks if the object is of this class or has this class as one of its parents"
  ""
  '(setq object (skeleton-read "Object: "))
  '(setq class_name (skeleton-read "Class name: "))
  '(setq allow_string (skeleton-read "Allow string: "))
  > "is_a(" object ", " class_name ", " allow_string ");" \n)

(define-skeleton php-is_subclass_of
  "Insert an is_subclass_of statement."
  ""
  '(setq obj (skeleton-read "Object: "))
  '(setq class (skeleton-read "Class Name: "))
  '(setq allow_string (skeleton-read "Allow string: "))
  > "is_subclass_of(" obj ", " class ", " allow_string ");" \n)

(define-skeleton php-method_exists
  "Insert a method_exists statement."
  ""
  '(setq obj (skeleton-read "Object: "))
  '(setq method (skeleton-read "Method: "))
  > "method_exists(" object ", " method ");" \n)

(define-skeleton php-property_exists
  "Insert a property_exists statement."
  ""
  '(setq class (skeleton-read "Class: "))
  '(setq property (skeleton-read "Property: "))
  > "property_exists(" class ", " property ");" \n)

(define-skeleton php-trait_exists
  "Insert a trait_exists statement."
  ""
  '(setq trait (skeleton-read "Trait: "))
  '(setq autoload (skeleton-read "Autoload (TRUE | FALSE): "))
  > "trait_exists(" trait ", " autoload ");" \n)
