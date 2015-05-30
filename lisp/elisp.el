(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

(defvar unders/lisp-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?_ "w" table)
    (modify-syntax-entry ?- "w" table)
    (modify-syntax-entry ?/ "w" table)
    table))

(add-hook 'emacs-lisp-mode-hook (lambda ()
				  (set-syntax-table unders/lisp-syntax-table)))
