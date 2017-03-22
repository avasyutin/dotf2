(provide 'my-filetypes)

(add-hook 'ruby-mode-hook
          (function (lambda ()
                      (setq evil-shift-width ruby-indent-level))))

(add-hook 'c++-mode-hook
          (function (lambda ()
                      (setq c-basic-offset 4)
                      (c-set-offset 'substatement-open 0))))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "markdown"))
