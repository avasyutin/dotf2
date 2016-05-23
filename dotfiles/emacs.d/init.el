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

(require 'package)

(add-to-list 'custom-theme-load-path (expand-file-name "themes" user-emacs-directory))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib.
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; Make sure to have downloaded archive description.
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(package-initialize)
(ensure-package-installed 'evil
                          'evil-leader
                          'helm
                          'projectile
                          'powerline
                          'moe-theme
                          'indent-guide
                          'neotree
                          'gruvbox-theme
                          'base16-theme
                          'ample-theme
                          'flx-ido)

;; Evil mode settings
(evil-mode 1)
(global-evil-leader-mode)
(evil-leader/set-key "n" 'neotree-toggle)

;; IDO
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)


;; Projectile
(add-hook 'prog-mode-hook 'projectile-mode)
(setq projectile-switch-project-action 'projectile-dired)

;; NeoTree
(setq neo-smart-open t)
(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

;; Stop littering everywhere with save files, put them somewhere
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; Tabs are evil
(setq-default indent-tabs-mode nil)

;; Hide menu bar
(menu-bar-mode -1)

;; Theme UI and colors
(setq custom-safe-themes t)
(require 'moe-theme)
(moe-theme-set-color 'cyan)
(moe-dark)

(require 'powerline)
(powerline-moe-theme)

;; display line numbers
(global-linum-mode 1)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comment-empty-lines t)
 '(evil-auto-indent nil)
 '(evil-leader/leader ",")
 '(global-whitespace-mode t)
 '(global-whitespace-newline-mode t)
 '(indent-guide-threshold 1)
 '(neo-hidden-regexp-list
   (quote
    ("^\\." "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "^coverage$" "^log$" "^tmp$" "\\.tags$" "tags$" "tags.lock$" "\\.git$" "\\.swp$" "^\\.DS_Store$" "^\\.svn" "^\\.bundle$")))
 '(neo-keymap-style (quote default))
 '(neo-mode-line-type (quote neotree))
 '(neo-show-hidden-files nil)
 '(neo-window-fixed-size nil)
 '(neo-window-width 35)
 '(powerline-default-separator (quote shape))
 '(require-final-newline t)
 '(whitespace-display-mappings
   (quote
    ((space-mark 32
                 [183]
                 [46])
     (space-mark 160
                 [164]
                 [95])
     (tab-mark 9
               [8680 9]
               [92 9])))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(indent-guide-face ((t (:foreground "color-241"))))
 '(neo-expand-btn-face ((t (:foreground "#5fafd7" :background nil))))
 '(whitespace-empty ((t (:background "color-240"))))
 '(whitespace-hspace ((t (:foreground "color-240"))))
 '(whitespace-line ((t nil)))
 '(whitespace-newline ((t nil)))
 '(whitespace-space ((t (:foreground "color-240"))))
 '(whitespace-space-after-tab ((t (:foreground "color-242"))))
 '(whitespace-trailing ((t (:foreground "color-242")))))

;; Indent guides
(setq indent-guide-char "¦")
(setq indent-guide-recursive t)
(add-hook 'prog-mode-hook 'indent-guide-mode)

(add-hook 'before-save-hook 'whitespace-cleanup 'untabify)
