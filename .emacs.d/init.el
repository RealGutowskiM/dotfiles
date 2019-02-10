;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Edit config easily
(defun config-visit ()
  (interactive)
  (find-file user-init-file))
(defun config-reload ()
  (interactive)
  (load-file user-init-file))
(global-set-key (kbd "C-c e") 'config-visit)
(global-set-key (kbd "C-c r") 'config-reload)

;; Disable startup screen
(setq inhibit-startup-message t)

;; Change font
(set-frame-font "M+ 1m 12" nil t)

;; IDO
(require 'ido)
(setq ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-everywhere t)
(ido-mode t)
(global-set-key (kbd "C-x b") 'ibuffer)

;; Parens configuration
(show-paren-mode +1)
(setq electric-pair-pairs '(
                            (?\( . ?\))
                            (?\[ . ?\])
                            ))
(electric-pair-mode t)

;; Disable bell noise
(setq ring-bell-function 'ignore)

;; Line numbers
(global-display-line-numbers-mode)

;; Auto revert
(global-auto-revert-mode +1)

;; Disable tabs
(setq-default indent-tabs-mode nil)

;; Allow moving in subwords
(global-subword-mode t)

;; Set encoding to UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Disable backups
(setq backup-inhibited t
      auto-save-default nil)

;; Replace yes-or-no with y-or-n globally
(defalias 'yes-or-no-p 'y-or-no-p)

;; Scroll margins
(setq scroll-conservatively 101
      scroll-margin 10
      scroll-preserve-screen-position t)

;; Switch buffers easily
(global-set-key (kbd "C-h") 'previous-buffer)
(global-set-key (kbd "C-l") 'next-buffer)

(use-package diminish
  :ensure t
  :init
  (diminish 'undo-tree-mode))

;; Dracula theme
(use-package dracula-theme
  :ensure t
  :diminish (subword-mode) ;; Guess this is a good place for it
  :config
  (load-theme 'dracula t))

;; Go Evil
(use-package evil-leader
  :ensure t
  :init
  (global-evil-leader-mode t)
  :config
  (evil-leader/set-leader ",")
  (evil-leader/set-key
    "w" 'save-buffer
    "b" 'switch-to-buffer
    "t" 'shell
    "h" 'help-command))
(use-package evil
  :ensure t
  :diminish (evil-mode)
  :init
  (evil-mode 1)
  :config
  (setq evil-normal-state-tag "Normal"
        evil-insert-state-tag "Insert"
        evil-insert-state-tag "Visual"
        evil-normal-state-cursor '(box "#bd93f9")
        evil-insert-state-cursor '(bar "#50fa7b")
        evil-visual-state-cursor '(box "#f1fa8c")
        evil-emacs-state-modes (delq 'ibuffer-mode evil-emacs-state-modes)))

;; Which key
(use-package which-key
  :ensure t
  :diminish (which-key-mode)
  :config
  (which-key-mode))

;; Vertical IDO mode
(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode t)
  :config
  (setq ido-vertical-define-keys 'C-n-and-C-p-only))

;; Autocompletion
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-idle-delay 0.5))

;; Project management
(use-package projectile
  :ensure t
  :diminish (projectile-mode)
  :init
  (projectile-mode t)
  :config
  (setq projectile-globally-ignored-directories '("node_modules" ".git")
        projectile-enable-caching t)
  (evil-leader/set-key "p" 'projectile-command-map))

;; PROGRAMMING LANGUAGES

;; Check syntax onf the fly
(use-package flycheck
  :ensure t
  :diminish (flycheck-mode)
  :init (global-flycheck-mode))

;; Typescript
(use-package typescript-mode
  :ensure t
  :config
  (setq typescript-indent-level 2))
(use-package tide
  :ensure t
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-C-u-scroll t)
 '(package-selected-packages
   (quote
    (tide flycheck typescript-mode projectile diminish company ido-vertical-mode which-key evil-leader dracula-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
