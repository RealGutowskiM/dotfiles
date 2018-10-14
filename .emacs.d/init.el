(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Disable buttons on top of Emacs
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Transparency for terminal
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

;; Relative line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Scroll margin
(setq scroll-margin 10
      scroll-conservatively 100)

;; Disable annoying bell
(setq ring-bell-function 'ignore)

;; Line highlighting
(global-hl-line-mode t)

;; Make symbols pretty
(global-prettify-symbols-mode t)

;; Disable autosaves + backups
(setq make-backup-file nil)
(setq auto-save-default nil)

;; Substitute yes-or-no prompts for shorter y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable startup message
(setq inhibit-startup-message t)

;; Install use-package for easier package management
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Packages + their configuration
(use-package dracula-theme
             :ensure t
             :demand
             :config
             (load-theme 'dracula t))

(use-package which-key
             :ensure t
             :init
             (which-key-mode))

(use-package beacon
             :ensure t
             :init
             (beacon-mode t))

(use-package evil
             :ensure t
             :init
             (evil-mode t))

(use-package evil-leader
             :ensure t
             :init
             (global-evil-leader-mode t)
             (evil-leader/set-leader ","))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (beacon which-key use-package evil-surround evil-leader dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
