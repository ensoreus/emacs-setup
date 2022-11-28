

(use-package graphql-mode
  :ensure t
  )
(setq auto-mode-alist
      (append '(("\\.graphql" . graphql-mode)) auto-mode-alist))
(provide 'graphql-setup)
