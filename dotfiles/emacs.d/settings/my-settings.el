(provide 'my-settings)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Backup file settings
;; Stop littering everywhere with save files, put them somewhere
;; (setq backup-directory-alist '((".*" . "~/.emacs-backups")))

;; Clipboard support
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)
