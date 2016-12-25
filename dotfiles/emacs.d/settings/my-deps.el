(provide 'my-deps)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(ensure-package-installed 'evil
                          'evil-leader
                          'flx-ido
                          'projectile
                          'moe-theme
                          'powerline
                          'use-package
                          'xclip
                          'company)
