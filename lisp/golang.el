;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
;; http://andrewjamesjohnson.com/configuring-emacs-for-go-development/
;; http://yousefourabi.com/blog/2014/05/emacs-for-go/
;; http://dominik.honnef.co/posts/2013/03/writing_go_in_emacs/ - offline at the moment.
;; http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/ - offline at the moment.
;; https://github.com/syl20bnr/spacemacs/tree/master/contrib/!lang/go
;; https://github.com/svend/dot-emacsd/blob/master/emacs-init.org
;; https://github.com/dominikh/go-mode.el
;; http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/
;; go-rename - go get golang.org/x/tools/cmd/gorename

;; gotest       - https://github.com/nlamirault/gotest.el/blob/master/README.md
;;              - https://github.com/nlamirault/gotest.el

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

;; go-oracle
;; https://docs.google.com/document/d/1SLk36YRjjMgKqe490mSRzOPYEDe0Y_WQNRv-EiFYUyw/view
(load-file "~/go/src/golang.org/x/tools/cmd/oracle/oracle.el")

(defun unders/go-mode-setup ()
  ;; company-go https://github.com/nsf/gocode/tree/master/emacs-company
  ;; go get -u github.com/nsf/gocode
  (set (make-local-variable 'company-backends) '(company-go))

  ;; go-eldoc - https://github.com/syohex/emacs-go-eldoc
  ;; go get -u github.com/nsf/gocode
  (go-eldoc-setup)

  ;; Flycheck Syntax Checkers:
  ;; go-gofmt
  ;; go-golint    x
  ;; go-vet       x
  ;; go-build     x
  ;; go-test      ! must test that this works.
  ;; go-errcheck  x
  ;; flycheck     - https://github.com/flycheck/flycheck
  ;; http://www.flycheck.org/manual/0.23/Listing-errors.html#Listing-errors
  (flycheck-mode)
  (setq flycheck-check-syntax-automatically '(mode-enabled save new-line))

  ; Customize compile command to run go build
  (setq compile-command "go generate && go build -v && go test -v && go vet")

  )
(add-hook 'go-mode-hook 'unders/go-mode-setup)
