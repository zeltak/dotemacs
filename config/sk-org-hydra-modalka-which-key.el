;;; sk-org-hydra-modalka-which-key.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; Explanations for org mode hydras modal bindings

;;; Code:

(which-key-add-key-based-replacements
  "o" "org prefix"
  "o t" "org tag"
  "o d" "org todo"
  "o b" "org checkbox"
  "o p" "org property"
  "o C" "org clock"
  "o m" "org manipulate table"
  "o j" "org jump"
  "o f" "org files"
  "o v" "org agenda view"
  "o r" "org ref"
  "o o" "org organize")

(provide 'sk-org-hydra-modalka-which-key)
;;; sk-org-hydra-modalka-which-key.el ends here
