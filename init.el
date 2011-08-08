;;----------------------------------------------------------------------------
;; Set load path
;;----------------------------------------------------------------------------
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/site-lisp/")
           (default-directory my-lisp-dir))
      (progn
        (setq load-path (cons my-lisp-dir load-path))
        (normal-top-level-add-subdirs-to-load-path))))
(setq load-path (cons (expand-file-name "~/.emacs.d") load-path))

(let ((nfsdir "/suse/dmacvicar/.emacs.d")
  (cachedir "/space/cache/emacs"))
  (setq load-path (append load-path (list cachedir nfsdir)))
  (require 'elisp-cache)
  (elisp-cache nfsdir cachedir)
)
(load "custom")
