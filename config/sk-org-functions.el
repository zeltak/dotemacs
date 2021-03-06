;;; sk-org-functions.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; Org mode specific functions

;;; Code:

;; Org load languages
(defun sk/org-custom-load ()
  (interactive)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     ;; (dot . t)
     ;; (ditaa . t)
     (latex . t)
     ;; (gnuplot . t)
     ;; (sh . t)
     ;; (C . t)
     ;; (R . t)
     ;; (octave . t)
     (matlab . t)
     (python . t))))

(provide 'sk-org-functions)
;;; sk-org-functions.el ends here
