;; Auto complete
(require-package 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
;(ac-config-default)
(setq-default ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed


;; hook AC into completion-at-point
;;TODO remove sanityinc
(defun sanityinc/auto-complete-at-point ()
  (when (and (not (minibufferp))
	     (fboundp 'auto-complete-mode)
	     auto-complete-mode)
    #'auto-complete))

(defun sanityinc/never-indent ()
  (set (make-local-variable 'indent-line-function) (lambda () 'noindent)))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions
        (cons 'sanityinc/auto-complete-at-point
              (remove 'sanityinc/auto-complete-at-point completion-at-point-functions))))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

;;TODO does not work in the repl
(dolist (mode '(clojure-mode
		cider-repl-mode))
	(add-to-list 'ac-modes mode))

(provide 'init-autocomplete)
