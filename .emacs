
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defvar myPackages
  '(elpy
    flycheck
    py-autopep8
    ag
    dracula-theme
    company))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(when (require 'elpy nil t)
  (elpy-enable))

(let ((default-directory (expand-file-name user-emacs-directory "elpa")))
 (normal-top-level-add-subdirs-to-load-path))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(when (require 'dumb-jump-mode nil 'noerror)
  (add-hook 'prog-mode-hook 'dumb-jump-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("617341f1be9e584692e4f01821716a0b6326baaec1749e15d88f6cc11c288ec6" default)))
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold 100000000)
 '(package-selected-packages
   (quote
    (ag dracula-theme markdown-mode elpy dumb-jump auctex use-package jedi auto-complete)))
 '(read-file-name-completion-ignore-case t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'dracula t)

;; Automatically save and restore sessions
(setq desktop-dirname             "~/.emacs.d/desktop/"
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop nil
      desktop-auto-save-timeout   30)
(desktop-save-mode 0)

(defun my-desktop ()
  "Load the desktop and enable autosaving"
  (interactive)
  (let ((desktop-load-locked-desktop "ask"))
    (desktop-read)
    (desktop-save-mode 1)))

(defun fd-switch-dictionary()
  (interactive)
  (let* ((dic ispell-current-dictionary)
    	 (change (if (string= dic "deutsch8") "english" "deutsch8")))
    (ispell-change-dictionary change)
    (message "Dictionary switched from %s to %s" dic change)
    ))
(defun latex-insert-compactitem ()
  "Insert compactitem"
  (interactive)
  (insert "\\begin{compactitem}\n\\item\n\\end{compactitem}"))
(defun latex-insert-itemize ()
  "Insert itemize"
  (interactive)
  (insert "\\begin{itemize}\n\\item\n\\end{itemize}"))



(global-set-key (kbd "<f8>")   'fd-switch-dictionary)
(global-set-key (kbd "<f5> c") 'latex-insert-compactitem)
(global-set-key (kbd "<f5> i") 'latex-insert-itemize)

;; switch windows by geometry
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
