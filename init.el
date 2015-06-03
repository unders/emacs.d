(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(load "~/.emacs.d/lisp/nochrome.el")
(load "~/.emacs.d/lisp/company.el")
(load "~/.emacs.d/lisp/evil.el")
(load "~/.emacs.d/lisp/evil_lisp_state.el")
(load "~/.emacs.d/lisp/elisp.el")
(load "~/.emacs.d/lisp/edit.el")
(load "~/.emacs.d/lisp/ido.el")
(load "~/.emacs.d/lisp/fonts.el")
(load "~/.emacs.d/lisp/themes.el")
(load "~/.emacs.d/lisp/magit.el")
(load "~/.emacs.d/lisp/clipboard.el")
(load "~/.emacs.d/lisp/guide_key.el")
(load "~/.emacs.d/lisp/backup.el")
(load "~/.emacs.d/lisp/osx.el")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load "~/.emacs.d/lisp/keybindings.el")


;; https://github.com/syl20bnr/spacemacs/tree/master/contrib/auto-completion
;; company-statistics

;; elisp
;; Ruby, inf-ruby
;; ClosjureScript
;; Go
;; Html
;; Sass
;; JavaScript

;; Links
;; http://mixandgo.com/blog/how-i-ve-convinced-emacs-to-dance-with-ruby
