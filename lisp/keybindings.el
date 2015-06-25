;; https://www.masteringemacs.org/article/mastering-key-bindings-emacs
(evil-leader/set-leader "<SPC>")

(define-key evil-normal-state-map (kbd "SPC SPC") 'ace-jump-mode)

;; Turn off this keybindings in normal mode so
;; that's possible to jump to code-at-point.
(define-key evil-normal-state-map (kbd "M-.") nil)
(define-key evil-normal-state-map (kbd "M-,") nil)

;; Company
(defun unders/company-mode-add-keys ()
  (local-set-key (kbd "C-j") 'company-select-next)
  (local-set-key (kbd "C-k") 'company-select-previous)
  (local-set-key (kbd "C-l") 'company-complete-selection))

(add-hook 'company-mode-hook 'unders/company-mode-add-keys)
;; Company

;; Go
(defun unders/go-mode-add-keys ()
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  (local-set-key (kbd "C-c c") 'compile)
  (local-set-key (kbd "C-c C-c") 'recompile)
  (local-set-key (kbd "C-c C-k") 'kill-compilation)
  (local-set-key (kbd "C-c r") 'go-rename)
  )

(add-hook 'go-mode-hook 'unders/go-mode-add-keys)

(evil-leader/set-key-for-mode 'go-mode
  "gg" 'godef-jump
  "gi" 'go-goto-imports
  "cc" 'compile
  "cr" 'recompile
  "ia" 'go-import-add
  "r" 'go-rename
  "hh" 'godoc-at-point
  "hl" 'godoc
  "hd" 'godef-describe)
;; Go

;; Elisp
(defun unders/elisp-mode-add-keys ()
  (local-set-key (kbd "M-.") 'elisp-slime-nav-find-elisp-thing-at-point)
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  )

(add-hook 'emacs-lisp-mode-hook 'unders/elisp-mode-add-keys)

(evil-leader/set-key-for-mode 'emacs-lisp-mode
  "gg" 'elisp-slime-nav-find-elisp-thing-at-point
  "hh" 'elisp-slime-nav-describe-elisp-thing-at-point
  "eb" 'eval-buffer
  "ee" 'eval-last-sexp
  "ec" 'unders/eval-current-form
  "er" 'unders/eval-region
  "ef" 'eval-defun
  "tb" 'unders/ert-run-tests-buffer
  "tq" 'ert)
;; Elisp

;; Clojure
(add-hook 'clojure-mode-hook
	  '(lambda ()
	     (define-key clojure-mode-map "\C-c\C-k" 'unders/clj-reload-current-ns)
	     (define-key clojure-mode-map "\C-cl" 'unders/clj-erase-inf-buffer)
	     (define-key clojure-mode-map "\C-c\C-t" 'clojure-toggle-keyword-string)))

(evil-leader/set-key-for-mode 'clojure-mode
  "gg" 'unders/clj-find-tag-no-prompt
  "hh" 'inf-clojure-show-var-documentation
  "eb" 'inf-clojure-eval-paragraph
  "ee" 'inf-clojure-eval-last-sexp
  "ec" 'inf-clojure-eval-defun
  "er" 'inf-clojure-eval-region
  "ef" 'inf-clojure-eval-defun
  )


;; Global
;; (global-set-key (kbd "M-,") 'pop-global-mark)

(evil-leader/set-key
  "mb" 'magit-blame-mode
  "ml" 'magit-log
  "ms" 'magit-status
  "mc" 'magit-commit
  "ff" 'find-file
  "bs" 'switch-to-buffer
  "bk" 'kill-buffer)


;; https://www.masteringemacs.org/article/introduction-to-ido-mode
(defun ido-vertical-define-keys ()
  (define-key ido-completion-map (kbd "C-j") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-k") 'ido-prev-match)
  (define-key ido-completion-map (kbd "M-p") 'previous-history-element))

;; Move between windows
(global-set-key (kbd "C-c C-<right>") 'windmove-right)
(global-set-key (kbd "C-c C-<left>")  'windmove-left)
(global-set-key (kbd "C-c C-<up>")    'windmove-up)
(global-set-key (kbd "C-c C-<down>")  'windmove-down)

;; SPC b - buffer
;; SPC p - project
;; SPC f - file
;; SPC r - register
;; SPC e - error handling
;; SPC c - compiling

;; SPC m - major mode

;; SPC m ga - go to alternative file
;; SPC m gg - got to file at point
;; SPC m gt - go to corresponding test file
;; SPC m e - evaluation
;; SPC m s - REPL
;; SPC m c - compile
;; SPC m d - debug
;; SPC m t - test
;; SPC m r - refactor
;; SPC m h - help

;; https://github.com/syl20bnr/spacemacs/blob/master/doc/CONVENTIONS.md
;; https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.md
;; http://wttools.sourceforge.net/emacs-stuff/emacs-keybindings.html
;; https://github.com/syl20bnr/spacemacs/blob/master/spacemacs/keybindings.el
