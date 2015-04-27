(setq inhibit-startup-message t)
;;;;add line numbers
(global-linum-mode t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'init-utils)
(require 'init-elpa)


(require 'init-autocomplete)
(require 'init-ido)
(require 'init-paxedit)
(require 'init-auctex)
(require 'init-clojure)
(require 'init-clojure-cider)
;;load this last
(require 'init-evil)


;;append the directory name to not unique file (buffer) names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)


(setq frame-background-mode 'dark)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)
