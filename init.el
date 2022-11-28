;; -*- coding: utf-8; lexical-binding: t -*-
;;-----Repos
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'package-archives 
    '("gnu" .
      "http://elpa.gnu.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/custom")

(require 'helm-setup)
(require 'general)
(require 'coding-setup)
(require 'python-setup)
(require 'graphql-setup)
(require 'nodejs-setup)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(current-language-environment "Ukrainian")
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(js2-mode nodejs-repl graphql graphql-doc graphql-mode realgud-ipdb ipython3 ipython ipython-shell-send projectile-git-autofetch projectile-codesearch exec-path-from-shell conda py-autopep8 yasnippet-snippets yasnippet python-black company-jedi epc numpydoc eglot-mode eglot lsp-jedi lsp-mode lsp-treemacs company-quickhelp virtualenv flycheck-pyflakes python-mode material-theme company-anaconda anaconda-mode string-inflection smartparens magit iedit hideshow-org ac-helm direx direx-grep flyspell-correct-helm geben geben-helm-projectile helm helm-codesearch helm-company helm-core helm-directory helm-dired-history helm-dired-recent-dirs helm-flycheck helm-flymake helm-frame helm-fuzzier helm-fuzzy-find helm-git helm-google helm-icons helm-img helm-itunes helm-jira helm-lines helm-mode-manager helm-org helm-osx-app helm-pass helm-projectile helm-safari helm-selector helm-systemd helm-themes helm-xcdoc helm-youtube use-package use-package-el-get))
 '(tool-bar-mode nil)
 '(virtualenv-root "/Users/pmaliuta/Documents/")
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#263238" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Monaco")))))
