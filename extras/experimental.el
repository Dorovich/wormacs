;; (use-package multiple-cursors
;;   :ensure t
;;   :config
;;   (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;;   (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;;   (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package org-bullets
  :ensure t
  :after org
  :hook (org-mode . org-bullets-mode))

;; (use-package vterm
;;   :ensure t
;;   :defer t)

(use-package pdf-tools
  :ensure t
  :defer t
  :mode "\\.pdf\\'"
  :init (pdf-loader-install)
  :config
  (add-to-list 'revert-without-query ".pdf")
  (add-hook 'pdf-view-mode-hook (lambda () (display-line-numbers-mode -1))))
