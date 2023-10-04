(use-package corfu
  :ensure t
  :init (global-corfu-mode 1)
  :bind (:map corfu-map
              ("SPC" . corfu-insert-separator)))

(use-package eglot
  :ensure t
  :defer t
  :custom
  (eglot-send-changes-idle-time 0.1)
  :config
  (fset #'jsonrpc--log-event #'ignore))
