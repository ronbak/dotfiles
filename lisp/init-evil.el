(require 'evil)
(evil-mode t)


(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;;use C-u for scrolling
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)

;;ctrl-h is help and I need it more urgently than switching windows
;;(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;;(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;;(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;;(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)


;;full path when using :e
(define-key evil-ex-map "e" 'ido-find-file)
;;disables :bd
;;(define-key evil-ex-map "b" 'ido-display-buffer)

(provide 'init-evil)
