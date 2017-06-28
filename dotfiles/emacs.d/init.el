(package-initialize)

(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'package)
(require 'my-defuns)
(require 'my-deps)
(require 'my-settings)
(require 'my-appearance)
(require 'my-filetypes)

;; Fix environment variables in GUI Emacs.
(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

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
          "g" (lambda () (interactive) (projectile-ag (thing-at-point 'symbol)))
          "ci" 'evilnc-comment-or-uncomment-lines
          "," 'projectile-find-file
          "." 'projectile-switch-to-buffer
          "b" 'evil-switch-to-windows-last-buffer
          "p" (lambda () (interactive) (dired "."))))
        (global-evil-leader-mode))
    (use-package evil-nerd-commenter
      :config
      (evilnc-default-hotkeys)))
  :config
  (evil-mode 0))

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

;; Tabs are evil
(use-package indent-tabs
  :init
  (setq-default indent-tabs-mode nil))

;; Smex
(use-package smex
  :init
  (progn
    (global-set-key (kbd "M-x") 'smex))
  :config
  (smex-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:modified-sign "~")
 '(package-selected-packages (quote (evil-leader evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
