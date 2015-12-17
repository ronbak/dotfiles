(require-package 'auctex)
;(setq-default TeX-master "main.tex")
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)

;;customize latex call
(setq LaTeX-command-style '(("" "%(PDF)%(latex) -shell-escape %S%(PDFout)")))

;;(defun flymake-get-tex-args (file-name)
;;(list "pdflatex"
;;(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
;;(after-load 'flycheck
 ;;(add-hook 'LaTeX-mode-hook 'flycheck-mode))

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

(provide 'init-auctex)
