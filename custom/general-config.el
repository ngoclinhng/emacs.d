(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1))

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-right-command-modifier 'meta)
  (setq mac-option-modifier 'super)
  (setq mac-right-option-modifier 'super))

(setq column-number-mode t)

(defmacro my-use-package (package-name &rest body)
  (declare (indent 1))
  `(progn
     (unless (package-installed-p ,package-name)
       (package-refresh-contents)
       (package-install ,package-name))
     (require ,package-name)
     ,@body))

(my-use-package 'undo-tree
  (global-undo-tree-mode 1))

(my-use-package 'comment-dwim-2
  (global-set-key (kbd "M-;") 'comment-dwim-2))

(my-use-package 'iedit)

(my-use-package 'flycheck
  (global-flycheck-mode -1))

(my-use-package 'helm
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-c h") 'helm-command-prefix)
  (global-unset-key (kbd "C-x c"))
  (helm-mode 1))

(my-use-package 'projectile
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (setq projectile-completion-system 'helm)
  (projectile-mode +1))

(my-use-package 'magit
  (global-set-key (kbd "C-x g") 'magit-status))

(provide 'general-config)
