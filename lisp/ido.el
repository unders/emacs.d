(require 'ido-vertical-mode)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-use-filename-at-point 'guess)

(defun ido-vertical-define-keys ()
  (define-key ido-completion-map (kbd "C-j") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-k") 'ido-prev-match)
  (define-key ido-completion-map (kbd "M-p") 'previous-history-element))

;; https://www.masteringemacs.org/article/introduction-to-ido-mode
