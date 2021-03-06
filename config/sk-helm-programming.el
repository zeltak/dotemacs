;;; sk-helm-programming.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; Helm programming helpers

;;; Code:

;; Error checking
(sk/require-package 'helm-flycheck)

;; Helm for css/scss selectors
(sk/require-package 'helm-css-scss)

;; aux requirements
(require 'sk-helm-programming-bindings)

(provide 'sk-helm-programming)
;;; sk-helm-programming.el ends here
