(require-package 'clojure-mode)
(require-package 'cljsbuild-mode)
;;TODO checkout elein to run lein from emacs

(after-load 'clojure-mode
 (add-hook 'clojure-mode-hook 'paxedit-mode)
 (add-hook 'clojure-mode-hook 'paredit-mode)
 (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
 (add-hook 'clojure-mode-hook 'rainbow-identifiers-mode)
)
	
(add-auto-mode 'clojure-mode "\\.cljs\\'")

(provide 'init-clojure)

