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
			  'projectile)

;; Evil mode settings
(evil-mode 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key "b" 'evil-switch-to-windows-last-buffer)
(evil-leader/set-key "p" (lambda () (interactive) (dired ".")))

;; display line numbers
(global-linum-mode 1)

;; IDO
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Projectile
(projectile-global-mode)
(setq projectile-switch-project-action 'projectile-dired)
(evil-leader/set-key "," 'projectile-find-file)
(evil-leader/set-key "." 'projectile-switch-to-buffer)

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
