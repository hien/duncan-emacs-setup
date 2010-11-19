; auto syntax check
(require 'flymake-ycp)
(add-hook 'ycp-mode-hook 'flymake-ycp-load)