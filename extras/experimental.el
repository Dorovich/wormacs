(use-package fzf
  :ensure t
  :defer t)

(use-package multiple-cursors
  :ensure t
  :defer t
  :config
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package org-bullets
  :ensure t
  :after org)
