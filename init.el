(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/custom" t)

(require 'general-config)
(require 'c-cpp-config)
(require 'elixir-config)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-c/c++-googlelint-executable "~/.pyenv/shims/cpplint")
 '(package-selected-packages '(undo-tree))
 '(safe-local-variable-values
   '((eval setq flycheck-clang-include-path
	   (list "/Users/linhngoc/Developer/ceres-solver/include" "/Users/linhngoc/Developer/ceres-solver/internal" "/Users/linhngoc/Developer/ceres-solver/config"))
     (eval setq flycheck-clang-include-path
	   (list "/Users/linhngoc/Developer/ceres-solver/include" "/Users/linhngoc/Developer/ceres-solver/internal"))
     (eval setq flycheck-clang-include-path
	   (list "~/Developer/ceres-solver/include" "~/Developer/ceres-solver/internal"))
     (eval setq flycheck-clang-include-path
	   (list
	    (expand-file-name "./include")
	    (expand-file-name "./internal")))
     (eval setq flycheck-clang-include-path
	   (list
	    (expand-file-name "./include")
	    (expand-file-name "./internal/ceres")))
     (eval setq flycheck-clang-include-path
	   (list
	    (expand-file-name "./include"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
