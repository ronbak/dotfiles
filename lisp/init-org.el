
(with-eval-after-load 'org
  (add-hook 'org-mode-hook  (lambda () (setq truncate-lines nil)))
  (add-hook 'org-mode-hook  (lambda () (flyspell-mode t))))

;;for displaying embedded pictures in the buffer
(setq org-image-actual-width nil)
(setq org-startup-with-inline-images t)

(provide 'init-org)
