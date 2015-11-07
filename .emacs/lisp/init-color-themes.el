;; load solarized color theme
(require-package 'color-theme)
(add-to-list 'load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(require 'color-theme-solarized)
(color-theme-initialize)
;; set dark theme
;(color-theme-solarized-dark)

(provide 'init-color-themes)
