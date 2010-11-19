(defvar flymake-ycp-err-line-patterns '(("^\\(.*\\):\\([0-9]+\\) \\(.*\\)$" 1 2 nil 3)))
(defvar flymake-ycp-allowed-file-name-masks '((".+\\.\\(ycp\\)$" flymake-ycp-init) ))

;; Not provided by flymake itself, curiously
(defun flymake-create-temp-in-system-tempdir (filename prefix)
  (make-temp-file (or prefix "flymake-ycp")))

;; Invoke ycp with '-c' to get syntax checking
(defun flymake-ycp-init ()
  (list "ycpc" (list "-E" (flymake-init-create-temp-buffer-copy
                           'flymake-create-temp-in-system-tempdir))))
(defun flymake-ycp-load ()
  (interactive)
  (unless (eq buffer-file-name nil)
    (set (make-local-variable 'flymake-allowed-file-name-masks) flymake-ycp-allowed-file-name-masks)
    (set (make-local-variable 'flymake-err-line-patterns) flymake-ycp-err-line-patterns)
    (flymake-mode t)))

(provide 'flymake-ycp)
