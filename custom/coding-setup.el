
(setq auto-mode-alist
      (append
       '(("\\.C$"    . c++-mode)
	 ("\\.H$"    . c++-mode)
	 ("\\.cc$"   . c++-mode)
	 ("\\.hh$"   . c++-mode)
	 ("\\.hpp$"  . c++-mode)
	 ("\\.c$"    . c-mode)
	 ("\\.h$"    . objc-mode)
	 ("\\.m$"    . objc-mode)
	 ("\\.java$" . java-mode)
	 ("\\.cgi$"  . perl-mode)
	 ("\\.pl$"   . perl-mode)
	 ("\\.clj$"  . clojure-mode)
	 ("\\.cljs$" . clojurescript-mode)
	 ("\\.dfm$"  . c-mode)		; For BCB forms, to get auto-revert
	 ("\\.rb$" . robe-mode)
         ("\\.py$" . python-mode)
	 ("\\.proto$" . protobuf-mode)
         ("Podfile\\'" . ruby-mode )
	 ("\\.clp\\'" . clips-mode)
	 ("\\.ino\\'" . arduino-mode)
	 ("\\.vshader\\'" . glsl-mode)
	 ("\\.fshader\\'" . glsl-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode)
	 ("\\.el\\'" . emacs-lisp-mode)
	 ("\\.emacs\\'" . emacs-lisp-mode)
	 ("\\.xml\\'" . sgml-mode)
         ("\\.properties\\'" . groovy-mode)
         ("\\gradle\\'" . groovy-mode)
         ("\\.kt" . kotiln-mode)
         ("\\.go" . go-mode)
         ("\\.swift" . swift-mode)
         ) auto-mode-alist ))

;;Smartparens
(require 'smartparens-config)

(require 'hideshow) 
(global-set-key (kbd "C-=") 'hs-toggle-hiding)
(global-set-key (kbd "C--") 'hs-hide-all)
(global-set-key (kbd "C-+") 'hs-show-all)
(add-hook 'org-mode-hook 'hs-minor-mode)

(require 'string-inflection)
(global-unset-key (kbd "C-q"))
(global-set-key (kbd "C-q C-u") 'string-inflection-cycle)

;; Code snippets
(use-package yasnippet
  :ensure t
  :defer t
  :diminish yas-minor-mode
  :functions yas-reload-all
  :config
  (yas-reload-all nil)
  :hook (python-mode . yas-minor-mode))

(use-package yasnippet-snippets
  :ensure t
  :defer t
  :after yasnippet)

;; iedit
(define-key global-map (kbd "C-c ;") 'iedit-mode)
(global-company-mode)
(provide 'coding-setup)

;;magit
(use-package magit
  :ensure t)

(use-package uuidgen
  :ensure t
  :defer t)
