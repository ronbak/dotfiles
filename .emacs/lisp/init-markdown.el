(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(with-eval-after-load 'markdown-mode
  (add-hook 'markdown-mode-hook  (lambda () (flyspell-mode t))))

(provide 'init-markdown)
