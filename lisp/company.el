(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'company-statistics-mode)

(setq company-idle-delay 0.3
	  company-minimum-prefix-length 1
	  company-tooltip-limit 20 ; bigger popup window
	  company-require-match nil
	  company-echo-delay 0
	  company-dabbrev-ignore-case nil
	  company-begin-commands '(self-insert-command))
