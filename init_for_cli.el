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
(org-babel-load-file (expand-file-name "~/.emacs.d/emacsconfig_cli.org"))

