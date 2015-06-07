;; eval lisp helpers
(defun unders/eval-region ()
  (interactive)
  (eval-region (region-beginning) (region-end))
  (evil-normal-state))

(defun unders/eval-current-form ()
  "Looks for the current def* or set* command then evaluates, unlike `eval-defun', does not go to topmost function"
  (interactive)
  (save-excursion
    (search-backward-regexp "(def\\|(set")
    (forward-list)
    (call-interactively 'eval-last-sexp)))

(defun unders/ert-run-tests-buffer ()
  "Run all the tests in the current buffer."
  (interactive)
  (save-buffer)
  (load-file (buffer-file-name))
  (ert t))


;; Clojure

(defun unders/clj-reload-current-ns (next-p)
  (interactive "P")
  (let ((ns (clojure-find-ns)))
    (message (format "Loading %s ..." ns))
    (inf-clojure-eval-string (format "(require '%s :reload)" ns))
    (when (not next-p) (inf-clojure-eval-string (format "(in-ns '%s)" ns)))))

(defun unders/clj-erase-inf-buffer ()
  (interactive)
  (with-current-buffer (get-buffer "*inf-clojure*")
    (inf-clojure-clear-repl-buffer)))

(defun unders/clj-find-tag-no-prompt ()
  "Jump to the tag at point without prompting"
  (interactive)
  (find-tag (find-tag-default)))

;; Clojure
