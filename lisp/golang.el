;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
;; http://andrewjamesjohnson.com/configuring-emacs-for-go-development/
;; http://yousefourabi.com/blog/2014/05/emacs-for-go/
;; http://dominik.honnef.co/posts/2013/03/writing_go_in_emacs/ - offline at the moment.
;; http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/ - offline at the moment.
;; https://github.com/syl20bnr/spacemacs/tree/master/contrib/!lang/go
;; https://github.com/svend/dot-emacsd/blob/master/emacs-init.org

;; go-mode      - https://github.com/dominikh/go-mode.el
;; lint         - https://github.com/golang/lint
;; flycheck     - https://github.com/flycheck/flycheck

;; gotest       - https://github.com/nlamirault/gotest.el/blob/master/README.md
;;              - https://github.com/nlamirault/gotest.el
;; go-errcheck  - https://github.com/dominikh/go-errcheck.el
;; yasnippet-go - https://github.com/dominikh/yasnippet-go
;;              - https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/go-mode
;; go-rename
;; go-oracle

;; goimports - https://github.com/bradfitz/goimports
;; go get -u golang.org/x/tools/cmd/goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; Add new code to company autocomplete after save.
(defun unders/go-mode-before-save ()
  "Run external script on save"
  (when (eq major-mode 'go-mode)
    (shell-command-to-string "go install")))
(add-hook 'after-save-hook 'unders/go-mode-before-save)

(defun unders/go-mode-setup ()
  ;; company-go https://github.com/nsf/gocode/tree/master/emacs-company
  ;; go get -u github.com/nsf/gocode
  (set (make-local-variable 'company-backends) '(company-go))

  ;; go-eldoc - https://github.com/syohex/emacs-go-eldoc
  ;; go get -u github.com/nsf/gocode
  (go-eldoc-setup))
(add-hook 'go-mode-hook 'unders/go-mode-setup)
