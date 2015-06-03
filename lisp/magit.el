(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")

;; make magit status go full-screen but remember previous window
;; settings from: http://whattheemacsd.com/setup-magit.el-01.html
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))
