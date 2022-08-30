;===============================================================
; [AUTHORS] notidman
; [DATE-START] 18-08-22
; [BRIEF] emacs configuration settings convenient for me.
;===============================================================

;; [GUI CONFIG]
;===============================================================
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;===============================================================

;; [PACKAGE'S]
;; [EXTERNAL REPOSITORIES]
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

;; [LSP<PACKAGE'S]
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (c-mode . lsp)
	 (c++-mode . lsp)
	 (clojure-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :ensure t)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode :ensure t)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol :ensure t)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol :ensure t)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list :ensure t)

(use-package flycheck
  :ensure t)
(use-package company
  :ensure t)
;; optionally if you want to use debugger
(use-package dap-mode :ensure t)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode) :ensure t)

;; [OTHER]
(use-package evil
  :ensure t)
(use-package projectile
  :ensure t)
(use-package smooth-scroll
  :ensure t)

(smooth-scroll-mode)

(use-package yasnippet
  :ensure t)

;===============================================================

;; [COLOR<SCHEME]
;===============================================================
(use-package gruvbox-theme
  :ensure t)

(load-theme 'gruvbox-light-hard t)
;===============================================================

;; [SETTINGS]
;===============================================================
(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(fullscreen)

;; [EVIL]
(evil-mode t)

;; [LINUM]
(global-linum-mode t)

;; [IDO]
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; [BS]
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

;; [LSP]
(company-mode-on)

;===============================================================

;; [BIND'S]
;===============================================================
(global-set-key (kbd "<f1>") 'bs-show)
(global-set-key (kbd "<f2>") 'save-buffer)
;(global-set-key (kbd "M-e") 'RET)

;; [MOVE]
;(global-set-key (kbd "M-j") 'backward-char)
;(global-set-key (kbd "M-i") 'previous-line)
;(global-set-key (kbd "M-k") 'next-line)
;(global-set-key (kbd "M-l") 'forward-char)
;(global-set-key (kbd "M-L") 'move-end-of-line)
;(global-set-key (kbd "M-J") 'move-beginning-of-line)
;(global-set-key (kbd "M-I") 'scroll-down-command)
;(global-set-key (kbd "M-K") 'scroll-up-command)

;; [FILE<EDIT]
;(global-set-key (kbd "M-u") 'undo)


;; [WORK<FILESSYS]
;(global-set-key (kbd "M-f") 'ido-find-file)
;(global-set-key (kbd "C-f") 'projectile-find-file)
;(global-set-key (kbd "C-g") 'projectile-grep)

;; [COPY<PASTE]
;(global-set-key (kbd "C-x") 'kill-region)
;(global-set-key (kbd "C-c") 'kill-region-save)
;(global-set-key (kbd "C-v") 'yank)
;===============================================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f028e1985041fd072fa9063221ee9c9368a570d26bd6660edbd00052d112e8bb" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
