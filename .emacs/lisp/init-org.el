
(with-eval-after-load 'org
  (add-hook 'org-mode-hook  (lambda () (setq truncate-lines nil)))
  (add-hook 'org-mode-hook  (lambda () (flyspell-mode t)))
  (add-hook 'markdown-mode-hook (lambda () (set-face-attribute 'variable-pitch nil :height 180)))
  (add-hook 'markdown-mode-hook (lambda () (set-face-font
					    'variable-pitch
					    "-unknown-Crimson Text-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"))))

;;for displaying embedded pictures in the buffer
(setq org-image-actual-width nil)
(setq org-startup-with-inline-images t)

(provide 'init-org)
