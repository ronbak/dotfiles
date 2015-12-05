(setq inhibit-startup-message t)
;;;;add line numbers

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'init-utils)
(require 'init-elpa)
(require 'init-backups)
(require 'init-visuals)

(require 'init-helm)
(require 'init-org)
(require 'init-markdown)
(require 'init-langtool)
(require 'init-color-themes)
(require 'init-autocomplete)
(require 'init-paxedit)
(require 'init-auctex)
(require 'init-clojure)
(require 'init-clojure-cider)
(require 'init-magit)
;;load this last
(require 'init-evil)
(require 'init-avy)


;;append the directory name to not unique file (buffer) names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)


;;;;dedicated window for popup notifacations
(defun toggle-current-window-dedication ()
 (interactive)
 (let* ((window    (selected-window))
        (dedicated (window-dedicated-p window)))
   (set-window-dedicated-p window (not dedicated))
   (message "Window %sdedicated to %s"
            (if dedicated "no longer " "")
            (buffer-name))))

(global-set-key [pause] 'toggle-current-window-dedication)

(tool-bar-mode -1)
