(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

(defun unders/lisp-hook ()
  (modify-syntax-entry ?_ "w")
  (modify-syntax-entry ?/ "w")
  (modify-syntax-entry ?- "w"))

(add-hook 'emacs-lisp-mode-hook 'unders/lisp-hook)

(require 'elisp-slime-nav)
(add-hook 'emacs-lisp-mode-hook 'elisp-slime-nav-mode)
