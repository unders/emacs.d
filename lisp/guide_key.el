(require 'guide-key)

(setq guide-key/guide-key-sequence '("SPC" "C-x" "C-c"))
(setq guide-key/recursive-key-sequence-flag t)
(setq guide-key/idle-delay 0.4)
(setq guide-key/popup-window-position (quote bottom))

(guide-key-mode 1)
