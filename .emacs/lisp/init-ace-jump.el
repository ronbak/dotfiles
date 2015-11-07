(require-package 'ace-jump-mode)
(eval-after-load 'evil-mode
(progn 
 (define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)
 (define-key evil-normal-state-map (kbd "S-SPC") 'ace-jump-char-mode)
))

(provide 'init-ace-jump)
