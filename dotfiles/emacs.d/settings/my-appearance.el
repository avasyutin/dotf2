(provide 'my-appearance)

;; Hide menu bar.
(use-package menu-bar
  :config
  (menu-bar-mode -1))

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
