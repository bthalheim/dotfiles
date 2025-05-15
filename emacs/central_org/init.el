
;; init.el
(require 'org)




;; Get the directory containing this init.el file 
(defvar my/config-root (file-name-directory (or load-file-name buffer-file)))

;; Load actual configuration from README.org
;; (org-babel-load-file (expand-file-name "README.org" user-emacs-directory))

(org-babel-load-file (expand-file-name "README.org" my/config-root))




