; loads ruby mode when a .rb file is opened.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(add-to-list 'auto-mode-alist  '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist  '("\\.rhtml$" . html-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

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
