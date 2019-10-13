;
;
;

(add-to-list 'custom-theme-load-path "~/themes/")
(load-theme 'wombat)
(load-theme 'zenburn t)
;(load-theme 'zenburn)
;(load-theme 'manjo-dark)


;(setq frame-title-format "emacs")

(menu-bar-mode -1)
(tool-bar-mode -1)

(scroll-bar-mode -1)

(setq-default cursor-type 'box)

;(ido-mode)
;(column-number-mode)
;(show-paren-mode)

;(global-hl-line-mode)

;(winner-mode t)
;(windmove-default-keybindings)

(setq-default indent-tabs-mode nil)

(global-display-line-numbers-mode)



(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (multiple-cursors))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'multiple-cursors)
(global-set-key (kbd "C-d") 'mc/mark-next-like-this)
;(global-set-key (kbd "C-D") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-D") 'mc/mark-all-like-this)

(setq visible-bell 1)
