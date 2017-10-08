;; Reload .emacs file: M-x load-file

;; ==============
;; Customisations
;; ==============
(prefer-coding-system 'utf-8)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist
	     '(font . "InputMono-10.0"))
;;(set-face-attribute 'default nil :height 90) ;Fontsize = :height/10
(setq inhibit-startup-message t)

;; Fontify the whole line for headings (with a background color).
(setq org-fontify-whole-heading-line t)

;; Set visual line mode
(global-visual-line-mode t)

;; =====
;; MELPA
;; =====

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")) ;; changed https to http
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; ========
;; Org-Mode
;; ========

;; Standard key bindings
;; =====================
;; (global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)

;; Misc. settings
;; ==============
(setq org-log-into-drawer t)
(setq org-clock-into-drawer t)
(setq org-latex-create-formula-image-program 'dvipng)

;; Agenda-Files
;; ============
(setq org-agenda-files (quote ("d:/org/")))

(setq org-agenda-custom-commands
      '(("O" "Custom overwiew"
         ((agenda "" ((org-agenda-ndays 1))) 
                      ;; limits the agenda display to a single day
          (todo "NEXT"))
         ((org-agenda-compact-blocks t))) ;; options set here apply to the entire block
        ;; ...other commands here
        ))
(setq org-agenda-skip-scheduled-if-done t) ;; make sure scheduled or deadlined tasks dissapear
(setq org-agenda-skip-deadline-if-done t)  ;; once thei're done

;; Global tags
;; ===========
(setq org-tag-alist '(("failed" . ?f) ("correct" . ?c)))

;; ====================
;; custom-set-variables
;; ====================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (leuven))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
