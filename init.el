(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; La siguiente line carga tu configuración de otro archivo
(org-babel-load-file (expand-file-name "~/.emacs.d/emacsconfig.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-electric-math '("$" . "$"))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(modus-vivendi))
 '(fci-rule-color "#383838")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(indent-guide-global-mode t)
 '(inhibit-startup-screen t)
 '(lsp-javascript-preferences-quote-style "double")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files
   '("/home/raziel/Orgmode/intinerario/tareassinclasificar.org" "/home/raziel/Orgmode/intinerario/academico.org" "/home/raziel/Orgmode/intinerario/personal.org" "/home/raziel/Orgmode/intinerario/trabajo.org"))
 '(org-capture-templates
   '(("n" "Crea una nueva tarea" entry
      (file "")
      (file "~/Orgmode/intinerario/tarea.org"))))
 '(org-default-notes-file "~/Orgmode/intinerario/tareassinclasificar.org")
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-log-into-drawer t)
 '(org-refile-allow-creating-parent-nodes 'confirm)
 '(org-refile-targets '((org-agenda-files :tag . "")))
 '(org-refile-use-outline-path 'file)
 '(package-selected-packages
   '(nix-mode typescript-mode typescritp-mode markdown-mode hl-todo apheleia org-plus-contrib org-contacts elpher epresent dashboard org-roam company-box dap-mode lsp-treemacs lsp-ivy lsp-ui js-react-redux-yasnippets lsp-mode prettier-js tide add-node-modules-path ob-restclient restclient emmet-mode rainbow-delimiters yaml-mode which-key web-mode use-package telephone-line switch-window spacemacs-theme skewer-mode pdf-tools pandoc org-ref magit lorem-ipsum ledger-mode ivy-bibtex indent-guide haskell-mode flycheck engine-mode elfeed dockerfile-mode csv-mode counsel-projectile company-web company-auctex beacon))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(restclient-inhibit-cookies nil)
 '(typescript-indent-level 2)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(web-mode-comment-formats
   '(("java" . "/*")
     ("javascript" . "//")
     ("typescript" . "//")
     ("php" . "/*")
     ("css" . "/*")
     ("jsx" . "//")))
 '(web-mode-comment-style 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#292b2e" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 129 :width normal :foundry "SRC" :family "firacode"))))
 '(company-tooltip-selection ((t (:inherit company-tooltip-selection :extend t :background "dim gray"))))
 '(lsp-ui-peek-highlight ((t (:background "white" :distant-foreground "white" :foreground "black" :box (:line-width (1 . -1) :color "red" :style released-button)))))
 '(rainbow-delimiters-base-face ((t (:inherit nil))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "orange red"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark orange"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "spring green"))))
 '(whitespace-tab ((t (:foreground "#636363")))))
