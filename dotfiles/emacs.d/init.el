
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)

(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'my-defuns)
(require 'my-deps)
(require 'my-settings)

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

;; Hide menu bar
(use-package menu-bar
  :config
  (menu-bar-mode -1))

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
