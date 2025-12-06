(load "~/Documents/Manual/ANU/HOL/HOL/tools/editor-modes/emacs/hol-mode")
(load "~/Documents/Manual/ANU/HOL/HOL/tools/editor-modes/emacs/hol-unicode")
(transient-mark-mode 1)
(setq-default indent-tabs-mode nil)
(set-face-attribute 'region nil :background "#666")

;; Broken because "C-S-q a" doesn't work, although "C-S-q" does, and "a" does.
;;(global-set-key (kbd "C-S-q a") "qmatch_goalsub_abbrev_tac")
;;(global-set-key (kbd "C-S-q A") "qmatch_asmsub_abbrev_tac")
;;(global-set-key (kbd "C-S-q u") "unabbrev_all_tac")
;;(global-set-key (kbd "C-S-q p") "qpat_x_assum")
;;(global-set-key (kbd "C-S-q P") "qpat_assum")
;;(global-set-key (kbd "C-S-q k") "kall_tac")
(global-set-key (kbd "C-) C-)") "∞")
(global-set-key (kbd "C-( -") "−∞")
(global-set-key (kbd "C-( =") "+∞")
(global-set-key (kbd "C-( (") "−")
(global-unset-key (kbd "C-x C-u"))

;; Note: emacs bookmarks seem useful

;; (global-set-key (kbd "M-n f") <TODO>)

(setq abbrev-all-caps t)

(electric-indent-mode 0)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

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

