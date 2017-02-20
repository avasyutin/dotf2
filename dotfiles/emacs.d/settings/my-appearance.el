(provide 'my-appearance)

;; Disable Annoying Audio Notifications.
(setq ring-bell-function 'ignore)

(if (osx?)
  (add-to-list 'initial-frame-alist '(font . "Fira Code-12")))

(if (linux?)
  (add-to-list 'initial-frame-alist '(font . "Fira Code-9")))

;; Disable word wrap.
(setq-default truncate-lines 1)

;; Hide menu bar.
(use-package menu-bar
  :config
  (menu-bar-mode -1))

;; Hide tool bar.
(use-package tool-bar
  :config
  (tool-bar-mode -1))

;; display line numbers
(use-package linum
  :config
  (global-linum-mode 1))

(use-package moe-theme
  :config
  (progn
    (moe-theme-set-color 'cyan)
    (powerline-moe-theme)
    (moe-dark)))

(use-package git-gutter
  :init
  (progn
    (git-gutter:linum-setup)
    (set-face-background 'git-gutter:modified nil)
    (set-face-background 'git-gutter:added nil)
    (set-face-background 'git-gutter:deleted nil)
    (set-face-foreground 'git-gutter:modified "yellow")
    (set-face-foreground 'git-gutter:added "green")
    (set-face-foreground 'git-gutter:deleted "red")
    (custom-set-variables
     '(git-gutter:modified-sign "~")))
  :config
  (add-hook 'prog-mode-hook 'git-gutter-mode))
