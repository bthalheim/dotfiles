(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(defun my/org-babel-tangle-config ()
  (when (string-equal (buffer-file-name)
                      (expand-file-name "README.org" user-emacs-directory))    (org-babel-tangle)))

(add-hook 'org-mode-hook
          (lambda () (add-hook 'after-save-hook #'my/org-babel-tangle-config nil 'local)))
