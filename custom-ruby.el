; loads ruby mode when a .rb file is opened.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(add-to-list 'auto-mode-alist  '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist  '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist  '("\\.rhtml$" . html-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(autoload 'ri "ri-ruby.el" nil t)

; indent on newline
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

; electric features
;;(require 'ruby-electric)

(defun my-ruby-mode-hook ()
  (font-lock-mode t)
  (setq standard-indent 2)
;;  (ruby-electric-mode t)
  (define-key ruby-mode-map "\C-c\C-a" 'ruby-eval-buffer))
(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)
(add-hook 'ruby-mode-hook 'turn-on-font-lock)

(setq ri-ruby-script (expand-file-name "~/.emacs.d/ri-emacs.rb") )

(add-hook 'ruby-mode-hook 
	(lambda ()
	(local-set-key [f1] 'ri)
;;	(local-set-key [tab]      'ri-ruby-complete-symbol)
;;	(local-set-key "\C-c\C-a" 'ri-ruby-show-args)
))

