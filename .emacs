;
;
;

(add-to-list 'custom-theme-load-path "~/themes/")
;;(load-theme 'wombat)
;;(load-theme 'zenburn t)
;;(load-theme 'zenburn)
;;(load-theme 'manjo-dark)
;;(load-theme 'solarized-light t)
;;(load-theme 'solarized-dark t)

;;(setq frame-title-format "emacs")

(menu-bar-mode -1)
(tool-bar-mode -1)

(scroll-bar-mode -1)

(setq-default cursor-type 'box)

(require 'whitespace)
(global-whitespace-mode 1)
;;(setq-default show-trailing-whitespace t)
;;(setq whitespace-style '(trailing tabs newline tab-mark newline-mark space-mark))
;;(setq whitespace-style '(space-mark))
(setq whitespace-display-mappings '((space-mark 32 [183] [46])))
(setq-default whitespace-line-column 80)
(setq-default fill-column 80)
(add-hook 'prog-mode-hook 'highlight-beyond-fill-column)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-beyond-fill-column-face ((t (:foreground "red")))))

;(add-to-list 'default-frame-alist
;; '(font . "DejaVu Sans Mono-14"))
;;(set-frame-font "Inconsolata-16" nil t)
;;(set-frame-font "DejaVu Sans Mono-14" nil t)
(set-face-attribute 'default nil
                    :family "Consolas" :height 110)

;(ido-mode)
;(column-number-mode)
;(show-paren-mode)

;(global-hl-line-mode)

;(winner-mode t)
;(windmove-default-keybindings)

;;(setq-default indent-tabs-mode nil)
(setq tab-always-indent 'complete)

(global-display-line-numbers-mode)



(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))

(package-initialize)

(elscreen-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elcord-display-buffer-details t)
 '(elcord-display-elapsed nil)
 '(elcord-use-major-mode-as-main-icon t)
 '(package-selected-packages
   (quote
    (verilog-mode elscreen spacemacs-theme solarized-theme elcord ## multiple-cursors))))


(require 'multiple-cursors)
(global-set-key (kbd "C-d") 'mc/mark-next-like-this)
;(global-set-key (kbd "C-D") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-D") 'mc/mark-all-like-this)
;(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "M-d") 'mc/edit-lines)

(setq visible-bell -1)

;(setq mouse-wheel-scroll-amount '(5 ((shift) . 5))) ;; one line at a time
;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;(setq scroll-step 1) ;; keyboard scroll one line at a time

(require 'elcord)
(elcord-mode)

(load-theme 'solarized-light t)
;;(load-theme 'spacemacs-light t)


(defun my-verilog-hook ()
    (setq indent-tabs-mode nil)
    (setq tab-width 4))
(add-hook 'verilog-mode-hook 'my-verilog-hook)

(custom-set-variables
 '(verilog-align-ifelse t)
 '(verilog-auto-delete-trailing-whitespace t)
 '(verilog-auto-inst-param-value t)
 '(verilog-auto-inst-vector nil)
 '(verilog-auto-lineup (quote all))
 '(verilog-auto-newline nil)
 '(verilog-auto-save-policy nil)
 '(verilog-auto-template-warn-unused t)
 '(verilog-case-indent 4)
 '(verilog-cexp-indent 4)
 '(verilog-highlight-grouping-keywords t)
 '(verilog-highlight-modules t)
 '(verilog-indent-level 4)
 '(verilog-indent-level-behavioral 4)
 '(verilog-indent-level-declaration 4)
 '(verilog-indent-level-module 4)
 '(verilog-tab-to-comment t))
