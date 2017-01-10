(provide 'my-appearance)

(require 'powerline)

;; Hide menu bar.
(use-package menu-bar
  :config
  (menu-bar-mode -1))

;; display line numbers
(use-package linum
  :config
  (global-linum-mode 1))

;; (use-package moe-theme
;;   :config
;;   (progn
;;     (moe-theme-set-color 'cyan)
;;     (powerline-moe-theme)
;;     (moe-dark)))

(use-package monokai-theme
  :init
  (use-package powerline
    :init
    (setq ns-use-srgb-colorspace nil)
    :config
    (powerline-default-theme))
  :config
  (load-theme 'monokai t))

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
