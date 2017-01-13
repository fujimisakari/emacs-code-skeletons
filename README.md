# emacs-code-skeltons

## Introduction
This is snippet skelton for each language.
It is convenient to combine with [helm-code-skeleton.el.](https://github.com/fujimisakari/emacs-helm-code-skeleton)
I will update it from time to time.


## Configuration
Add to your .emacs file:
```
(with-eval-after-load 'php-mode
  (load "path/to/emacs-code-skeltons/php/print")
  (define-key php-mode-map (kbd "C-c C-e") 'php-echo)
  (define-key php-mode-map (kbd "C-c C-p") 'php-print_r))
