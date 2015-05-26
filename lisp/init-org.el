
(with-eval-after-load 'org
  (add-hook 'org-mode-hook  (lambda () (setq truncate-lines nil)))
  (add-hook 'org-mode-hook  (lambda () (flyspell-mode t))))

(provide 'init-org)
