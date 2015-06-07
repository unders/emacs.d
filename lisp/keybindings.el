(evil-leader/set-leader "<SPC>")

(define-key evil-normal-state-map (kbd "SPC SPC") 'ace-jump-mode)

;; Elisp
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
(evil-leader/set-key
  "gb" 'magit-blame-mode
  "gl" 'magit-log
  "gs" 'magit-status
  "gc" 'magit-commit
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
