(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))); save backups *~ in this dir to not clutter the other directories
;;save a lot of older versions
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

(provide 'init-backups)
