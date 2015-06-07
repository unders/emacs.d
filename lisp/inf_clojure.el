;; http://martintrojer.github.io/clojure/2014/10/02/clojure-and-emacs-without-cider/
;; https://github.com/clojure-emacs
;; https://github.com/palletops/leaven
;; https://github.com/clojure/clojurescript/wiki/Emacs-&-Inferior-Clojure-Interaction-Mode
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist))

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)

;; company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(require 'company-etags)
(add-to-list 'company-etags-modes 'clojure-mode)

(defun get-clj-completions (prefix)
  (let* ((proc (inferior-lisp-proc))
         (comint-filt (process-filter proc))
         (kept ""))
    (set-process-filter proc (lambda (proc string) (setq kept (concat kept string))))
    (process-send-string proc (format "(complete.core/completions \"%s\")\n"
                                      (substring-no-properties prefix)))
    (while (accept-process-output proc 0.1))
    (setq completions (read kept))
    (set-process-filter proc comint-filt)
    completions))

(defun company-infclj (command &optional arg &rest ignored)
  (interactive (list 'interactive))

  (cl-case command
    (interactive (company-begin-backend 'company-infclj))
    (prefix (and (eq major-mode 'inferior-lisp-mode)
                 (company-grab-symbol)))
    (candidates (get-clj-completions arg))))

(add-to-list 'company-backends 'company-infclj)
