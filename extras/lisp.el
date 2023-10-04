(use-package sly
  :ensure t
  :defer t
  :init
  (setq-default sly-symbol-completion-mode nil)
  :config
  (add-to-list 'exec-path "/usr/local/bin")
  (setq inferior-lisp-program "sbcl"))

(defun electric-pair-mode-enable ()
  (electric-pair-mode 1))

(add-hook 'sly-repl-mode-hook 'electric-pair-mode-enable)
(add-hook 'lisp-mode-hook 'electric-pair-mode-enable)
(add-hook 'lisp-interaction-mode-hook 'electric-pair-mode-enable)
(add-hook 'scheme-mode-hook 'electric-pair-mode-enable)
(add-hook 'emacs-lisp-mode-hook 'electric-pair-mode-enable)
