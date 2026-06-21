(load "~/Documents/Manual/ANU/HOL/HOL/tools/editor-modes/emacs/hol-mode")
(load "~/Documents/Manual/ANU/HOL/HOL/tools/editor-modes/emacs/hol-unicode")
(transient-mark-mode 1)
(setq-default indent-tabs-mode nil)
(set-face-attribute 'region nil :background "#666")

(global-set-key (kbd "C-) C-)") "∞")
(global-set-key (kbd "C-( -") "−∞")
(global-set-key (kbd "C-( =") "+∞")
(global-set-key (kbd "C-( (") "−")
(global-unset-key (kbd "C-x C-u"))

;; Note: emacs bookmarks seem useful

(setq abbrev-all-caps t)

(setq-default abbrev-mode t)
(add-hook 'kill-emacs-hook 'write-abbrev-file)

(add-hook 'holscript-mode-hook
          (lambda () (display-fill-column-indicator-mode 1) (set-fill-column 80)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(aggressive-indent)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Displaying a warning if aggressive-indent was not installed was written by ChatGPT
(if (require 'aggressive-indent nil 'noerror)
    (progn
      (electric-indent-mode 0)
      (global-aggressive-indent-mode 1)
      (add-to-list 'aggressive-indent-excluded-modes 'html-mode)
      )
  (display-warning
   'init
   "aggressive-indent is not installed; automatic indentation disabled."
   :warning))
