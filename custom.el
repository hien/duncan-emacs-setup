
; UI customizations
; Get rid of that icon tool bar
(if (memq window-system '(x w32 mac))
  (tool-bar-mode -1))
;; Remove splash screen
(setq inhibit-splash-screen t)
; shutup the beep
(setq visible-bell t)

; activate textmate type snippets
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

; activate pastie
(require 'pastie)

; never use tabs
(setq-default indent-tabs-mode nil)
(setq show-trailing-whitespace t)

; dont create backups
(setq make-backup-files nil) 

(load "custom-c"    ) ; C/C++ custom

;(setq 'compile-command "ant -emacs")

(load "custom-cmake") ; cmake autoload
(load "custom-git") ; git mode

(global-auto-revert-mode)

(load "custom-python") ; python

; buffer list with alt-return
(global-set-key [(meta return)] 'electric-buffer-list   )
; I hate the ctrl-z stuff
;(global-set-key "C-Z" nil)

(load "custom-ruby") ; ruby customization

(global-font-lock-mode 1)
(set-default-font "Inconsolata:style=Medium")

