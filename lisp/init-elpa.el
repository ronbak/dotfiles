(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;;; Also use Melpa for most packages
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-pinned-packages
                '(
                  (cider              . "melpa-stable")
                  (ac-cider      . "melpa-stable")
                  (flycheck-clojure . "melpa-stable")
                  (clojure-mode       . "melpa-stable")
                  (clj-refactor . "melpa-stable")
                  (rainbow-delimiters . "melpa-stable")
                  (auto-complete . "melpa-stable")
                  ;; "unstable" package
                  ))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(setq package-enable-at-startup nil)
(package-initialize)

(provide 'init-elpa)
