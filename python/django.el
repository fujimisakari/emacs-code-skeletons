;; django.el --- Skeleton for insert current language element

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

(define-skeleton django-view-RequestContext
  "Insert a RequestContext statement."
  > "context = RequestContext(request, {" \n
  > _ \n
  > -4 "})" \n
)

(define-skeleton django-view-render_to_response
  "Insert a render_to_response statement."
  > "return render_to_response('', context)" \n
)

(define-skeleton django-view-redirect
  "Insert a redirect statement."
  > "return redirect(reverse('', kwargs={}))" \n
)

(define-skeleton django-view-reverse
  "Insert a reverse statement."
  ""
  '(setq url_name (skeleton-read "url name? " "url_name"))
  > "reverse('" url_name "', kwargs={})" \n
)

(define-skeleton django-model-IntegerField
  "Insert a IntegerField statement."
  ""
  '(setq field (skeleton-read "Field name? " "field"))
  > field " = models.IntegerField(default=0)" \n
)

(define-skeleton django-model-CharField
  "Insert a CharField statement."
  ""
  '(setq field (skeleton-read "Field name? " "field"))
  '(setq max-length (skeleton-read "Max length? "))
  '(setq default (skeleton-read "Default? " "''"))
  > field " = models.CharField(max_length=" max-length ", default=" default ", blank=True)" \n
)

(define-skeleton django-model-TextField
  "Insert a TextField statement."
  ""
  '(setq field (skeleton-read "Field name? " "field"))
  > field " = models.TextField(default= '', blank=True)" \n
)

(define-skeleton django-model-BooleanField
  "Insert a BooleanField statement."
  ""
  '(setq field (skeleton-read "Field name? " "field"))
  > field " = models.BooleanField(default=False)" \n
)

(define-skeleton django-model-DateTimeField
  "Insert a DateTimeField statement."
  ""
  '(setq field (skeleton-read "Field name? " "field"))
  > field " = models.DateTimeField()" \n
)

(define-skeleton django-model-DateTimeField_created_at
  "Insert a DateTimeField statement for created_at."
  > "created_at = models.DateTimeField(auto_now_add=True)" \n
)

(define-skeleton django-model-DateTimeField_updated_at
  "Insert a DateTimeField statement for updated_at."
  > "updated_at = models.DateTimeField(auto_now=True)" \n
)

(define-skeleton django-model-bulk_create
  "Insert a bulk_create statement."
  ""
  '(setq model (skeleton-read "Model name? " "model"))
  '(setq obj-list (skeleton-read "Object list name? " "obj_list"))
  > model ".bulk_create(" obj-list ")" \n
)

(define-skeleton django-model-select_for_update
  "Insert a select_for_update statement."
  ""
  '(setq model (skeleton-read "Model name? " "model"))
  > model ".objects.select_for_update().get()" \n
)
