(provide 'my-settings)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Backup file settings
;; Stop littering everywhere with save files, put them somewhere
(let ((backup-directory (expand-file-name "backup" user-emacs-directory)))
  (setq
   backup-by-copying t
   version-control t
   kept-new-versions 5
   kept-old-versions 2
   delete-old-versions t
   backup-directory-alist (list (cons ".*" backup-directory))))

;; Save cursor position
(use-package saveplace
  :init
  (progn
    (setq save-place-file (expand-file-name "saveplace" user-emacs-directory))
    (setq-default save-place t))
  :config
  (save-place-mode 1))

;; Clipboard support
(if (osx?)
  (progn
    (setq
     interprogram-cut-function 'paste-to-osx
     interprogram-paste-function 'copy-from-osx)))

(if (linux?)
  (use-package xclip
    :config
    (xclip-mode 1)))

(let ((project-root (locate-dominating-file default-directory ".git")))
  (setq tags-file-name (concat project-root ".tags")))

(use-package company
  :init
  (setq
   company-idle-delay 0.3)
  :config
  (add-hook 'prog-mode-hook 'global-company-mode))
