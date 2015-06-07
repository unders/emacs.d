(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code." t)

(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)

(require 'eldoc) ; if not already loaded
(eldoc-add-command
 'paredit-backward-delete
  'paredit-close-round)

;; Fix so that it is possible to prefix sexp with a comment ;
(eval-after-load 'paredit
  '(define-key paredit-mode-map (kbd ";")   'self-insert-command))

;; Disable this so that C-k will work for paredit.
;; evil-insert-digraph
(define-key evil-insert-state-map (kbd "C-k") nil)
;; evil-shift-left-line
(define-key evil-insert-state-map (kbd "C-d") nil)
