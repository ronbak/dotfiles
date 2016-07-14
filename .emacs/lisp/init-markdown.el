(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(with-eval-after-load 'markdown-mode
  (add-hook 'markdown-mode-hook  (lambda () (flyspell-mode t)))
  (add-hook 'markdown-mode-hook (lambda () (variable-pitch-mode t)))
  (add-hook 'markdown-mode-hook #'visual-line-mode)
  (add-hook 'markdown-mode-hook (lambda () (set-face-attribute 'variable-pitch nil :height 180)))
  (add-hook 'markdown-mode-hook (lambda () (set-face-font
					    'variable-pitch
					    "-*-Crimson Text-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"))))


(provide 'init-markdown)
