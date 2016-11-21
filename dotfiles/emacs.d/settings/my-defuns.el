(provide 'my-defuns)

(defun linux? ()
  "Check if host operation system is Linux."
  (eq system-type 'gnu/linux))

(defun osx? ()
  "Check if host operation system is OSX."
  (eq system-type 'darwin))

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

(defun copy-from-osx ()
  "Paste text from OSX clipboard."
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  "Copy text to OSX clipboard."
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
