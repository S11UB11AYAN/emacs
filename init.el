;;This is the actual config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'gruvbox-theme)
  (package-refresh-contents)
  (package-install 'gruvbox-theme))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("a5270d86fac30303c5910be7403467662d7601b821af2ff0c4eb181153ebfc0a" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" default))
 '(package-selected-packages
   '(spaceline company dashboard avy smex ido-vertical-mode org-bullets gruvbox-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 90 :width normal :foundry "ADBO" :family "JetBrainsMono Nerd Font")))))
