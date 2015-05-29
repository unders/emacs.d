(require 'evil)

(global-evil-leader-mode)
(evil-mode 1)

(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "f" 'find-file
  "bs" 'switch-to-buffer
  "bk" 'kill-buffer)


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
