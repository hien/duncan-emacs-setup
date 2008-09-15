
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