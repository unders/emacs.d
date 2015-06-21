;; This sets $MANPATH, $PATH and exec-path from your shell, but only on OS X.
;; (exec-path-from-shell-copy-env "PYTHONPATH")
;; Help
;; C-h f exec-path-from-shell-initialize
;; C-h f exec-path-from-shell-copy-env
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH")
  )
