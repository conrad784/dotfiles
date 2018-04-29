
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package auto-complete-config
  :config
  (ac-config-default))

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
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold 100000000)
 '(package-selected-packages (quote (dumb-jump auctex use-package jedi auto-complete)))
 '(read-file-name-completion-ignore-case t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


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
  (insert "\\begin{compactitem}\n\n\\end{compactitem}"))
(defun latex-insert-itemize ()
  "Insert itemize"
  (interactive)
  (insert "\\begin{itemize}\n\n\\end{itemize}"))



(global-set-key (kbd "<f8>")   'fd-switch-dictionary)
(global-set-key (kbd "<f5> c") 'latex-insert-compactitem)
(global-set-key (kbd "<f5> i") 'latex-insert-itemize)

;; switch windows by geometry
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
