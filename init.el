(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes/")
;(font-lock-mode 1)
(require 'whitespace)
(setq whitespace-style
  '(space-before-tab trailing tabs))
(global-whitespace-mode 1)
(whitespace-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(setq tab-width 4)
(load-theme 'solarized-dark t)
;(set-face-attribute 'mode-line nil
;   :foreground "cyan"
;   :background "black"
;   :overline "cyan")

