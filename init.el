(setq inhibit-startup-message t)
;;;;add line numbers
(global-linum-mode t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'init-utils)
(require 'init-elpa)
(require 'init-backups)
(require 'init-visuals)

(require 'init-org)
(require 'init-markdown)
(require 'init-color-themes)
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
