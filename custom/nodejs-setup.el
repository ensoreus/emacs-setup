(use-package js2-mode
  :ensure t
  )

(use-package nodejs-repl
  :ensure t
  :after (js2-mode)
  :hook (js2-mode . nodejs-repl-hook)
  :bind ("C-x c-e" . nodejs-repl-send)
  )

(provide 'nodejs-setup)
