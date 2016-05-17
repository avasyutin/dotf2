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
			  'helm
			  'projectile)

(evil-mode 1)

;; Stop littering everywhere with save files, put them somewhere
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; Tabs are evil
(setq-default indent-tabs-mode nil)

;; Hide menu bar
(menu-bar-mode -1)

;; Theme UI and colors
(setq custom-safe-themes t)
;;(load-theme 'monokai)

;; display line numbers
(global-linum-mode 1)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;;(global-whitespace-mode t)

;; make whitespace-mode use just basic coloring
;;(setq whitespace-style '(space tabs newline space-mark tab-mark newline-mark lines-tail trailing))

;; make whitespace-mode use just basic coloring
;; (setq whitespace-style '(spaces tabs newline space-mark tab-mark newline-mark))

;;(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
;;      '(
;;        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
;;        (newline-mark 10 [182 10]) ; 10 LINE FEED
;;        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
;;                ))

;;(custom-set-faces
;; '(whitespace-space
;;   ((((class color) (background dark)) (:foreground "#363636"))
;;    (((class color) (background light)) (:background "yellow" :foreground "black"))
;;        (t (:inverse-video t)))))

;;(set-face-attribute 'whitespace-space nil :background nil :foreground "#363636")
;;(set-face-attribute 'whitespace-newline nil :background nil :foreground "#363636")

;;(set-face-attribute
;; 'whitespace-space-after-tab nil
;; :background "#363636"
;; :foreground (face-attribute 'default :background))
