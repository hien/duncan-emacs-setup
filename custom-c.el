; no tabs, but indent with 4 spaces
(setq c-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq objc-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq c++-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))

(add-hook 'c++-mode-hook
  '(lambda ( )
   (c-set-style "Stroustrup")
   (c-toggle-auto-state)))

; auto syntax check
(require 'flymake-clang-c)
(add-hook 'c-mode-hook 'flymake-clang-c-load)
(require 'flymake-clang-c++)
(add-hook 'c++-mode-hook 'flymake-clang-c++-load)

(require 'auto-complete-clang)
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

