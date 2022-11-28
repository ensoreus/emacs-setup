(use-package python-mode
  :ensure nil
  :custom
  (python-shell-interpreter "python3"))

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection))
  (:map lsp-mode-map
        ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-dabbrev-other-buffers t)
  (company-dabbrev-code-other-buffers t)
  ;; M-<num> to select an option according to its number.
  (company-show-numbers t)
  ;; Only 2 letters required for completion to activate.
  (company-minimum-prefix-length 3)
  ;; Do not downcase completions by default.
  (company-dabbrev-downcase nil)
  ;; Even if I write something with the wrong case,
  ;; provide the correct casing.
  (company-dabbrev-ignore-case t)
  ;; company completion wait
  (company-idle-delay 0.2)
  ;; No company-mode in shell & eshell
  (company-global-modes '(not eshell-mode shell-mode))
  ;; Use company with text and programming modes.
    :hook ((text-mode . company-mode)
           (prog-mode . company-mode)
           (python-mode . company-mode)))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package numpydoc
  :ensure t
  :defer t
  :custom
  (numpydoc-insert-examples-block nil)
  (numpydoc-template-long nil)
  :bind (:map python-mode-map
              ("C-c C-n" . numpydoc-generate)))

(use-package py-autopep8
  :ensure t
  :hook (python-mode-hook py-autopep8-enable-on-save)
  )

(defun dd/projectile-proj-find-function (dir)
  (let ((root (projectile-project-root dir)))
    (and root (cons 'transient root))))
 
;;; <EGLOT> configuration, pick this or the LSP configuration but not both.
;; Using Eglot with Pyright, a language server for Python.
;; See: https://github.com/joaotavora/eglot.
(use-package eglot
  :ensure t
  :init
;  (define-key eglot-mode-map (kbd "C-c e f n") #'flymake-goto-next-error)
;  (define-key eglot-mode-map (kbd "C-c e f p") #'flymake-goto-prev-error)
;  (define-key eglot-mode-map (kbd "C-c e r") #'eglot-rename)
;  (define-key eglot-mode-map (kbd "C-c e a") #'eglot-code-actions)
;  (define-key eglot-mode-map (kbd "C-c e j") #'eglot-find-declaration)
                                        ;  (define-key eglot-mode-map (kbd "C-c e i") #'eglot-find-implementation)
  :bind
  (("C-c e r" . eglot-rename)
   ("C-c e a" . eglot-code-actions))
  :defer t
  :hook (python-mode . eglot-ensure))


;; Another choice is Jedi, but it is designed to work with
;; AutoComplete instead of company-mode.  There's jedi-company, but
;; `jedi:setup` will always setup ac, unless you disable it
;; explicitly, which is annoying.  Also, you don't get the tool tip.

;; If you really want to try with jedi+company, use below scripts it
;; (remove the :disabled tag)
(use-package jedi
  :after (epc pos-tip)
  :init
  :hook
  (python-mode jedi:setup)
  (python-mode company-mode)
  (python-mode company-jedi)
  :config
  (setq jedi:complete-on-dot t)
  ;; For setup
  ;; http://d.hatena.ne.jp/n-channel/20131220/1387551080
  ;; and this:
  ;; http://kenbell.hatenablog.com/entry/2017/01/15/112344
  )

;; Buffer formatting on save
(use-package blacken
  :ensure t
  :defer t
  :custom
  (blacken-allow-py36 t)
  (blacken-skip-string-normalization t)
  :hook (python-mode . blacken-mode))

(use-package flymake
  :ensure t
  :hook (pyhton-mode . flymake-mode))

(setenv "WORKON_HOME" "/Users/philippmaliuta/Documents/Projects/ml")

(use-package conda
  :ensure t
  :init
  (setq conda-anaconda-home "/opt/miniconda3")
  (setq conda-env-home-directory "/opt/miniconda3")
  (setq conda-env-executables-dir "/opt/miniconda3/bin/")
  (conda-env-activate "tf"))

(use-package ipython-shell-send
  :ensure t
  :bind (("C-c C-i" . ipython-shell-send-buffer)))

(provide 'python-setup)
