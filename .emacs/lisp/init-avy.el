(require-package 'avy)
(eval-after-load 'evil-mode
(progn 
 (define-key evil-normal-state-map (kbd "SPC") 'avy-goto-char)
 (define-key evil-normal-state-map (kbd "S-SPC") 'avy-goto-word-1)
))

(provide 'init-avy)
