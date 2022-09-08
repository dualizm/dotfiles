;;;;==============================================
;;;; [AUTHORS] notidman
;;;; [DATE-START] 18-08-22
;;;; [BRIEF] emacs configuration settings convenient for me.
;;;;==============================================

;;; [GUI CONFIG]
;;==============================================
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;==============================================

;;; [PLUGINS]
;;==============================================

; Add new packages
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("elpa" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

; Vim like hjkl
(use-package evil
  :ensure t)

(use-package projectile
  :ensure t)

; Cool scroll
(use-package smooth-scroll
  :ensure t)
(smooth-scroll-mode)

;(use-package yasnippet
;  :ensure t)

; Cool bean
(use-package pulse
  ;; Highlight cursor postion after movement
  :ensure t
  :defer t
  :init (defun pulse-line (&rest _)
          (pulse-momentary-highlight-one-line (point)))
  (dolist (command '(other-window windmove-do-window-select mouse-set-point mouse-select-window))
    (advice-add command :after #'pulse-line)))

; Support CL
(use-package slime
  :ensure t)
(setq inferior-lisp-program "sbcl")
;;==============================================

;;; [COLOR<SCHEME]
;;==============================================
(use-package gruvbox-theme
  :ensure t)

(load-theme 'modus-vivendi t)
;;==============================================

;;; [SETTINGS]
;;==============================================
(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(fullscreen)

;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

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

(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)

(set-frame-font "-CTDB-FiraCode Nerd Font-normal-normal-normal-*-*-*-*-*-d-0-iso10646-1" nil t)
(set-face-attribute 'default nil :height 110)

;;==============================================

;;; [BIND'S]
;;==============================================
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
;;==============================================
