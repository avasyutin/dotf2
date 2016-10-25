(require 'package)

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.
  Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(or (file-exists-p package-user-dir)
    (package-refresh-contents))
(package-initialize)

(ensure-package-installed 'evil
                          'evil-leader
			  'flx-ido
			  'projectile
			  'moe-theme
			  'powerline
			  'use-package)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Projectile
(use-package projectile
  :init
  (setq projectile-switch-project-action 'projectile-dired)
  :config
  (projectile-global-mode))

;; Evil mode settings
(use-package evil
  :init
  (progn
    (use-package evil-leader
      :config
      (progn
	(evil-leader/set-leader ",")
	(evil-leader/set-key
          "," 'projectile-find-file
	  "." 'projectile-switch-to-buffer
	  "b" 'evil-switch-to-windows-last-buffer
	  "p" (lambda () (interactive) (dired "."))))
      	(global-evil-leader-mode)))
  :config
  (evil-mode 1))

;; display line numbers
(use-package linum
  :config
  (global-linum-mode 1))

;; IDO
(use-package ido
  :init
  (progn
    (setq
     ido-enable-flex-matching t
     ido-use-faces nil)
    (use-package flx-ido
      :config
      (flx-ido-mode 1)))
  :config
  (progn
    (ido-mode 1)
    (ido-everywhere 1)))

;; UI
(use-package moe-theme
  :config
  (progn
    (moe-theme-set-color 'cyan)
    (powerline-moe-theme)
    (moe-dark)))

;; Save cursor position
(use-package saveplace
  :init
  (progn
    (setq save-place-file "~/.emacs.d/saveplace")
    (setq-default save-place t))
  :config
  (save-place-mode 1))

;; Backup file settings


;; Stop littering everywhere with save files, put them somewhere
;; (setq backup-directory-alist '((".*" . "~/.emacs-backups")))

;; Tabs are evil
(use-package indent-tabs
  :init
  (setq-default indent-tabs-mode nil))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil-leader evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
