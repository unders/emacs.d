(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Always reload the file if it changed on disk
(global-auto-revert-mode 1)

;; Highlight matching parens
(show-paren-mode 1)
