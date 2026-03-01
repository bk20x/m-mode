(defvar m-keywords
  '("load" "open" "define" "macro" "let" "let*" "if" "car" "cdr" "failwith"
    "each" "interned-symbols" "setf" "setq" "setb" "setp" "->" "doTimes" "macroexpand" "safe" "and"
    "who" "return" "while" "echo")
  "Special forms/core builtins for M.")

(defvar m-font-lock-defaults
  `(((,(regexp-opt m-keywords 'symbols) . font-lock-keyword-face)
     ;; Highlight (define | macro Name ...) 
     ("(\\s-*\\(?:define\\|macro\\)\\s-+\\(\\(\\w\\|\\s_\\)+\\)" 1 font-lock-function-name-face)
)))

;;;###autoload
(define-derived-mode m-mode nil "M"
  "Major mode for editing M source files."
  (setq font-lock-defaults m-font-lock-defaults))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.m\\'" . m-mode))

(provide 'm-mode)
