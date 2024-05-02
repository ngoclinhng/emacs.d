(my-use-package 'google-c-style
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent))

(add-hook 'c-mode-common-hook
	  (lambda () (flycheck-mode 1)))

;; https://github.com/flycheck/flycheck-google-cpplint
(my-use-package 'flycheck-google-cpplint
  (eval-after-load 'flycheck
    `(progn
       ;; Path to cpplint (installed via `pip install cpplint`)
       ;; which cpplint
       (custom-set-variables
	'(flycheck-c/c++-googlelint-executable "~/.pyenv/shims/cpplint"))
       
       ;; Add Google C++ Style checker.
       ;; In default, syntax checked by Clang and Cppcheck.
       (flycheck-add-next-checker 'c/c++-clang
                                  'c/c++-googlelint 'append))))

(provide 'c-cpp-config)
