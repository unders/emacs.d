(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(setq gc-cons-threshold 20000000)

(load "~/.emacs.d/lib/go/gorename.el")
;; (load "~/.emacs.d/lib/go/inf_go.el")

(load "~/.emacs.d/lisp/nochrome.el")
(load "~/.emacs.d/lisp/company.el")
(load "~/.emacs.d/lisp/evil.el")
(load "~/.emacs.d/lisp/paredit.el")
(load "~/.emacs.d/lisp/elisp.el")
(load "~/.emacs.d/lisp/exec_path_from_shell.el")
(load "~/.emacs.d/lisp/inf_clojure.el")
(load "~/.emacs.d/lisp/cider_clojure.el")
(load "~/.emacs.d/lisp/edit.el")
(load "~/.emacs.d/lisp/flycheck.el")
(load "~/.emacs.d/lisp/visual.el")
(load "~/.emacs.d/lisp/ido.el")
(load "~/.emacs.d/lisp/fonts.el")
(load "~/.emacs.d/lisp/themes.el")
(load "~/.emacs.d/lisp/magit.el")
(load "~/.emacs.d/lisp/clipboard.el")
(load "~/.emacs.d/lisp/guide_key.el")
(load "~/.emacs.d/lisp/backup.el")
(load "~/.emacs.d/lisp/osx.el")
(load "~/.emacs.d/lisp/projectile.el")
(load "~/.emacs.d/lisp/golang.el")
(load "~/.emacs.d/lisp/yasnippet.el")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load "~/.emacs.d/lisp/funcs.el")

(load "~/.emacs.d/lisp/keybindings.el")

;; Go
;; clojure
;; ClosjureScript
;; projectile
;; Ruby, inf-ruby
;; Html
;; Sass
;; JavaScript

;; Links
;; http://mixandgo.com/blog/how-i-ve-convinced-emacs-to-dance-with-ruby
