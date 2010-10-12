;; add python mode to the path
(setq load-path (cons (expand-file-name "~/.emacs.d/python-mode") load-path))
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

; auto syntax check
(require 'flymake-python)

