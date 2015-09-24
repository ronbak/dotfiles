(require 'ido)
(require-package 'ido-ubiquitous)
(ido-mode t)
(setq ido-enable-flex-matching t)
(ido-everywhere t)
(setq org-completion-use-ido t)
(ido-ubiquitous-mode 1)

(provide 'init-ido)
