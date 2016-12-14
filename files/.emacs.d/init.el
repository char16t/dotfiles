;; Show agenda via C-c a
(global-set-key (kbd "C-c a") 'org-agenda)

;; show line numbers
(line-number-mode 1)
(column-number-mode 1)
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

;; Highlight the screen line of the cursor
(global-hl-line-mode 1)

;; hide menubar
(menu-bar-mode 0)

;; theme
(load-theme 'tsdh-dark t)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; highlight 81-th symobol
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)))
(setq-default fci-rule-column 81)
(setq-default fci-rule-character ?\u2502)
(global-fci-mode 1)

