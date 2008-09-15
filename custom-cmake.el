; Add cmake listfile names to the mode list.
(autoload 'cmake-mode "cmake-mode" t)

(add-to-list 'auto-mode-alist'("CMakeLists\\.txt\\'" . cmake-mode))
(add-to-list 'auto-mode-alist'("\\.cmake\\'" . cmake-mode))
(add-hook 'cmake-mode-hook 'turn-on-font-lock)

