;;; sk-editing.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; For all kinds of editing

;;; Code:

;; Expand regions
(sk/require-package 'expand-region)
(require 'expand-region)

;; Commenting
(sk/require-package 'comment-dwim-2)

;; Smartparens
(sk/require-package 'smartparens)
(require 'smartparens-config)
(defmacro def-pairs (pairs)
  `(progn
     ,@(loop for (key . val) in pairs
          collect
            `(defun ,(read (concat
                            "sk/wrap-with-"
                            (prin1-to-string key)
                            "s"))
                 (&optional arg)
               (interactive "p")
               (sp-wrap-with-pair ,val)))))
(def-pairs ((paren        . "(")
            (bracket      . "[")
            (brace        . "{")
            (latex-dollar . "$")
            (single-quote . "'")
            (double-quote . "\"")
            (back-quote   . "`")))
(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
(show-smartparens-global-mode)

;; Iedit mode
(sk/require-package 'iedit)

;; Snippets
(sk/require-package 'yasnippet)
(setq yas-prompt-functions '(yas-completing-prompt))

;; Visual regexp
(sk/require-package 'visual-regexp)
(sk/require-package 'visual-regexp-steroids)

;; Edit really large files
(sk/require-package 'vlf)

;; aux requirements
(require 'sk-editing-functions)
(require 'sk-editing-bindings)
(require 'sk-editing-hydra)
(require 'sk-editing-diminish)

(provide 'sk-editing)
;;; sk-editing.el ends here
