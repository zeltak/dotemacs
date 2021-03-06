;;; sk-versions-modalka-which-key.el --- Global settings -*- lexical-binding: t; -*-

;;; Commentary:

;; Modal which key explanations

;;; Code:

;; Magit - Best git wrapper ever
(which-key-add-key-based-replacements
  "g b" "magit blame"
  "SPC e" "magit status"

  "g l" "git timemachine"
  "g L" "git timemachine switch branch"

  "g p" "gist post"
  "g P" "gist private post"

  "] h" "next hunk"
  "[ h" "previous hunk"
  "i h" "mark hunk"
  "g h" "revert hunk")

(provide 'sk-versions-modalka-which-key)
;;; sk-versions-modalka-which-key.el ends here
