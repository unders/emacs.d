;; http://martintrojer.github.io/clojure/2014/10/02/clojure-and-emacs-without-cider/
;; http://martintrojer.github.io/clojure/2015/02/14/clojure-and-emacs-without-cider-redux/
;; https://github.com/clojure-emacs
;; https://github.com/palletops/leaven
;; https://github.com/clojure/clojurescript/wiki/Emacs-&-Inferior-Clojure-Interaction-Mode
;; https://github.com/clojure/clojurescript/wiki/Quick-Start
;; http://swannodette.github.io/2014/12/31/the-old-way-the-new-way/
;; http://swannodette.github.io/2015/03/16/optimizing-clojurescript-function-invocation/
;; https://github.com/magomimmo/modern-cljs/blob/master/doc/tutorial-01.md
;; http://abratukhin.blogspot.se/2015/03/how-to-set-up-unit-tests-in.html
;; https://github.com/krisajenkins/clojurescript-mode/blob/master/clojurescript-mode.el
;; https://github.com/carllerche/.emacs.d/blob/master/extra-packages/clojure-mode/clojurescript-mode.el
;; https://github.com/bryanhunter/.emacs.d/blob/master/clojure-rig/clojurescript-mode.el
;; http://www.mrspeaker.net/2015/02/18/nearly-getting-started-with-clojurescript/
;; https://github.com/bhauman/lein-figwheel
;; http://rafalcieslak.svbtle.com/9-tips-for-clojurescript-beginners
;; https://github.com/bhauman/lein-figwheel/wiki/Quick-Start
;; http://swannodette.github.io/2015/03/09/lessons-in-the-fundamentals/
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist))

(setq inf-clojure-program "lein figwheel")

(add-hook 'clojure-mode-hook #'paredit-mode)

(setq inf-clojure-prompt-read-only nil)
(add-hook 'inf-clojure-minor-mode-hook   ;; prevent company-mode from freezing Emacs when the REPL is busy
          (lambda () (setq completion-at-point-functions nil)))
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)

;; company-mode
(require 'company-etags)
(add-to-list 'company-etags-modes 'clojure-mode)
(add-hook 'after-init-hook 'global-company-mode)

;; (require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)
;; (require 'company-etags)
;; (add-to-list 'company-etags-modes 'clojure-mode)
;;
;; (defun get-clj-completions (prefix)
;;   (let* ((proc (inferior-lisp-proc))
;;          (comint-filt (process-filter proc))
;;          (kept ""))
;;     (set-process-filter proc (lambda (proc string) (setq kept (concat kept string))))
;;     (process-send-string proc (format "(complete.core/completions \"%s\")\n"
;;                                       (substring-no-properties prefix)))
;;     (while (accept-process-output proc 0.1))
;;     (setq completions (read kept))
;;     (set-process-filter proc comint-filt)
;;     completions))
;;
;; (defun company-infclj (command &optional arg &rest ignored)
;;   (interactive (list 'interactive))
;;
;;   (cl-case command
;;     (interactive (company-begin-backend 'company-infclj))
;;     (prefix (and (eq major-mode 'inferior-lisp-mode)
;;                  (company-grab-symbol)))
;;     (candidates (get-clj-completions arg))))
;;
;; (add-to-list 'company-backends 'company-infclj)
