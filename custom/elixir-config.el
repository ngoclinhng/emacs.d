;; https://github.com/wkirschbaum/elixir-ts-mode
;; 1. brew install tree-sitter
;; 2. Follow steps this link to install tree-sitter for different languages:
;;    https://git.savannah.gnu.org/cgit/emacs.git/tree/admin/notes/tree-sitter/starter-guide?h=emacs-29
;; 3. Copy /dist/* (from step 2/) into ~/.emacs.d/tree-sitter
;; 4. M-x elixir-ts-install-grammar to install missing parts.
(my-use-package 'elixir-ts-mode)

;; https://github.com/tonini/alchemist.el
;; (my-use-package 'alchemist)

(provide 'elixir-config)
