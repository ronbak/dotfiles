;; Auto complete
(require-package 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
;(ac-config-default)
(setq-default ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed


(defun set-auto-complete-as-completion-at-point-function ()
 (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)


(provide 'init-autocomplete)
