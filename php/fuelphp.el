;; fuelphp.el --- Skeleton for insert current language element

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

(define-skeleton fuel-php-debug_psysh
  "Insert a debug psysh statement."
  > "require(realpath(DOCROOT.'../').DIRECTORY_SEPARATOR.'psysh');" \n
  > "eval(\\Psy\\sh());" \n)

(define-skeleton fuel-php-debug_logging
  "Insert a error_log statement."
  ""
  '(setq value (skeleton-read "value? "))
  > "error_log('" value " is '.print_r(" value ", true).\"\\n\", '3', '/tmp/fuel_app.log');" \n)

(define-skeleton fuel-php-logger_debug
  "Insert a debug logger statement."
  ""
  '(setq log (skeleton-read "log string? "))
  > "logger(\Fuel::L_DEBUG, " log " , __METHOD__);" \n)

(define-skeleton fuel-php-logger_info
  "Insert a info logger statement."
  ""
  '(setq log (skeleton-read "log string? "))
  > "logger(\Fuel::L_INFO, " log " , __METHOD__);" \n)

(define-skeleton fuel-php-logger_warning
  "Insert a warning logger statement."
  ""
  '(setq log (skeleton-read "log string? "))
  > "logger(\Fuel::L_WARNING, " log " , __METHOD__);" \n)

(define-skeleton fuel-php-logger_error
  "Insert a error logger statement."
  ""
  '(setq log (skeleton-read "log string? "))
  > "logger(\Fuel::L_ERROR, " log " , __METHOD__);" \n)

(define-skeleton fuel-php-router-get
  "Insert a router get statement."
  > "Router::get('');")

(define-skeleton fuel-php-router-get-with-query
  "Insert a router get with query statement."
  > "Router::get(, array('' => ));")

(define-skeleton fuel-php-request-param
  "Insert a request param statement."
  > "$this->request->param('');")

(define-skeleton fuel-php-input-param
  "Insert a input param statement."
  > "Input::param('');")

(define-skeleton fuel-php-date-time-for-mysql
  "Insert a datetime for mysql statement."
  > "\Date::time()->format('mysql');")

(define-skeleton fuel-php-orm-find
  "Insert a orm find statement."
  > "static::find($id);")

(define-skeleton fuel-php-orm-query-where
  "Insert a orm query where statement."
  > "static::query()->where('field', 'value')->get();")

(define-skeleton fuel-php-response-with-view
  "Insert a response with view statement."
  > "Response::forge(View::forge(''));")

(define-skeleton fuel-php-response-with-presenter
  "Insert a response with presenter statement."
  > "Response::forge(Presenter::forge(''));")

(define-skeleton fuel-php-response-redirect
  "Insert a response with presenter statement."
  > "Response::redirect(Router::get(''));")
