(setq yas-snippet-dirs
      '(;;"~/.emacs.d/snippets"                 ;; personal snippets
        ;;"/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        ;;"/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ;; "/path/to/yasnippet/snippets"
		"~/Projects/yasnippet-go"
		"~/.emacs.d/.cask/24.5.1/elpa/yasnippet-20150415.244/snippets" ;; the default collection
        ))
(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already
