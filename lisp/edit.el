(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Always reload the file if it changed on disk
(global-auto-revert-mode 1)

;; Highlight matching parens
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Add the cursor's column position
(column-number-mode 1)

;; Don't backup files
(setq make-backup-files nil)

;; End all files with newline
(setq require-final-newline t)
