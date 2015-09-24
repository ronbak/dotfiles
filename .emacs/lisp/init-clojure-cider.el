(require 'init-clojure)

(require-package 'cider)
(require-package 'ac-cider)

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
 '(progn
	 (add-to-list 'ac-modes 'cider-mode)
	 (add-to-list 'ac-modes 'cider-repl-mode)))

(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paxedit-mode)
(add-hook 'clojure-mode-hook (lambda ()
			      (clj-refactor-mode 1)
			      (cljr-add-keybindings-with-prefix "C-c r")))


(setq cider-show-error-buffer 'except-in-repl)
(setq cider-auto-select-error-buffer nil)

(require-package 'flycheck-clojure)
(after-load 'flycheck
 (flycheck-clojure-setup))

(provide 'init-clojure-cider)
