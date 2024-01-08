(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(use-package dashboard
  :ensure t
  :init
  (setq initial-buffer-choice 'dashboard-open)
  (setq dashboard-banner-logo-title "Beche Achi Bhaii")
  (setq dashboard-startup-banner "/home/buku/.emacs.d/unnamed.jpg")
  (setq dashboard-center-content nil)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)
  (setq dashboard-items '((recents . 10)
	(agenda . 5)
	(bookmarks . 5)))
  :config
  (dashboard-setup-startup-hook))

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode 1)
(column-number-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq scroll-conservatively 100)
(setq ring-bell-function 'ignore)
(setq electric-pair-pairs '(
			    (?\( . ?\))
			    (?\[ . ?\])
			    (?\{ . ?\})
			    (?\" . ?\")
			    (?\' . ?\')
			    ))
(electric-pair-mode t)


(global-prettify-symbols-mode t) 
(global-hl-line-mode t)
(global-prettify-symbols-mode t) 
(global-hl-line-mode t)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)
