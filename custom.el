; disable annoying Ctrl-Z send to background
(global-set-key "\C-Z" nil)
; UI customizations
; Get rid of that icon tool bar
(if (memq window-system '(x w32 mac))
  (tool-bar-mode -1))
;; Remove splash screen
(setq inhibit-splash-screen t)
; shutup the beep
(setq visible-bell t)

(custom-set-variables
 '(desktop-buffers-not-to-save "\\(^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|.*_flymake.*\\)$")
 '(desktop-files-not-to-save "^/[^/:]*:\\|.*_flymake\\..*"))

; activate textmate type snippets
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

; activate pastie
(require 'pastie)

; auto completion
;(load "custom-autocomplete")
;;(add-to-list 'load-path (concat myoptdir "AC"))
(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories (concat myoptdir "AC/ac-dict"))
;(require 'custom-autocomplete)
(load "custom-autocomplete")

; automatic syntax check
(require 'flymake)
;(setq flymake-log-level 3)

; never use tabs
(setq-default indent-tabs-mode nil)
(setq show-trailing-whitespace t)

;; from http://emacseditor.tribe.net/thread/5729c619-6e30-4b75-89fe-365388da52bf
;; Trim any trailing whitespaces before saving a file
;;(defun trim-trailing-whitespace ()
;;"This will trim trailing whitespace before saving a file."
;;(interactive)
;;(save-excursion
;;(beginning-of-buffer)
;;(replace-regexp "[ \t]+$" "" nil)
;;nil)
;;)

;;(defun toggle-trim-whitespace-on ()
;;"This turns on whitespace trimming"
;;(interactive)
;; Add the hooks
;;(add-hook 'write-file-hooks 'trim-trailing-whitespace))
;;(defun toggle-trim-whitespace-off ()
;;"This turns pff whitespace trimming"
;;(interactive)
;; Remove the hooks
;;(remove-hook 'write-file-hooks 'trim-trailing-whitespace))
;; On by default
;;(add-hook 'write-file-hooks 'trim-trailing-whitespace)

; dont create backups
(setq make-backup-files nil)

(load "custom-cmake") ; cmake autoload
(load "custom-git") ; git mode

(global-auto-revert-mode)

; buffer list with alt-return
;(global-set-key [(meta return)] 'electric-buffer-list   )
(global-set-key (kbd "M-RET") 'electric-buffer-list   )
; I hate the ctrl-z stuff
;(global-set-key "C-Z" nil)

(load "custom-python") ; python
(load "custom-ruby") ; ruby customization
(load "custom-ycp") ; ycp customization
(load "custom-c") ; C/C++ customization
(load "custom-java") ; Java customization

(global-font-lock-mode 1)
(set-frame-font "Inconsolata:style=Medium")

