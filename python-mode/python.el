;; python.el --- Skeleton for insert current language element

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

(define-skeleton python-class
  "Insert a class statement."
  ""
  '(setq classname (skeleton-read "class name? "))
  > "class " classname "(object):" \n
)

(define-skeleton python-from_import
  "Insert a from and import statement."
  ""
  '(setq from (skeleton-read "from? "))
  '(setq import (skeleton-read "import? "))
  > "from " from " import " import \n
)

(define-skeleton python-classmethod
  "Insert a classmethod statement."
  ""
  '(setq method (skeleton-read "Method name? "))
  > "@classmethod" \n
  > "def " method "(cls"
  ("Another argument? %s: "
    > ", " str)
  > "):" \n
)

(define-skeleton python-staticmethod
  "Insert a staticmethod statement."
  ""
  '(setq method (skeleton-read "Method name? "))
  '(setq argument (skeleton-read "Argument? ")) \n
  > "@staticmethod" \n
  > "def " method "(" argument
  ( "Another argument? %s: "
    > ", " str)
  > "):" \n
)

(define-skeleton python-property
  "Insert a property statement."
  ""
  '(setq method (skeleton-read "Method name? "))
  > "@property" \n
  > "def " method "(self):"
)

(define-skeleton python-method
  "Insert a method statement."
  ""
  '(setq method (skeleton-read "Method name? "))
  > "def " method "(self"
  ("Argument? %s: "
    > ", " str)
  > "):" \n
)

(define-skeleton python-if
  "Insert an if statement."
  ""
  '(setq val (skeleton-read "value or expression? "))
  > "if " val ":"\n
)

(define-skeleton python-if_in
  "Insert an if-in statement."
  ""
  '(setq val (skeleton-read "value or expression? "))
  '(setq list-val (skeleton-read "list value? "))
  > "if " val " in " list-val ":"\n
)

(define-skeleton python-if_not
  "Insert an if-not statement."
  ""
  '(setq val (skeleton-read "value or expression? "))
  > "if not " val ":"\n
)

(define-skeleton python-if_not_in
  "Insert an if-not-in statement."
  ""
  '(setq val (skeleton-read "value or expression? "))
  '(setq list-val (skeleton-read "list value? "))
  > "if " val " not in " list-val ":"\n
)

(define-skeleton python-isinstance
  "Insert an isinstance statement."
  ""
  '(setq val (skeleton-read "value? "))
  '(setq type (skeleton-read "Type? "))
  > "isinstance(" val ", " type ")" \n
)

(define-skeleton python-datetime_now
  "Insert a datetiem-now statement."
  > "datetime.datetime.now()" \n
)

(define-skeleton python-datetime_today
  "Insert a datetime-today statement."
  > "datetime.date.today()" \n
)

(define-skeleton python-datetime_yesterday
  "Insert a datetime-yesterday statement."
  > "datetime.date.today() - datetime.timedelta(days=1)" \n
)

(define-skeleton python-datetime_tomorrow
  "Insert a datetime-tomorrow statement."
  > "datetime.date.today() + datetime.timedelta(days=1)" \n
)

(define-skeleton python-sorted_reversed
  "Insert a sorted-reversed statement."
  > "sorted(list, reversed=True)" \n
)

(define-skeleton python-sorted_object
  "Insert a sorted-object statement."
  > "sorted(list, key=lambda x: x.id)" \n
)

(define-skeleton python-sorted_dict_key
  "Insert a sorted-dict-key statement."
  > "sorted(dict.iteritems(), key=lambda (k, v): (k, v))" \n
)

(define-skeleton python-sorted_dict_val
  "Insert a sorted-dict-val statement."
  > "sorted(dict, key=lambda x: x['id'])" \n
)

(define-skeleton python-debug_ipdb
  "Insert an ipdb statement."
  > "import ipdb; ipdb.set_trace()" \n
)

(define-skeleton python-logging
  "Insert a logging statement."
  > "import logging; logging.debug('')" \n
)

(define-skeleton python-elapsed_time
  "Insert an elapsed time statement."
  > "start = time.time()" \n
  > "elapsed_time = time.time() - start" \n
  > "print('elapsed_time: {}[sec]'.format(elapsed_time))" \n
)
