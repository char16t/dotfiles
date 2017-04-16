;; Personal information
(setq user-full-name "Valeriy Manenkov"
      user-mail-address "v.manenkov@gmail.com")

;; Append Load Path and require packages
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'bind-key)
(require 'use-package)

;; Show column number
(column-number-mode 1)

;; Load secrets
(load "~/.emacs.d/.secrets.el" t)

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; History
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;; Change "yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; UTF-8
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; Recent files
(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode)

;; Org Modules
(setq org-modules '(org-bbdb
                      org-gnus
                      org-drill
                      org-info
                      org-jsinfo
                      org-habit
                      org-irc
                      org-mouse
                      org-protocol
                      org-annotate-file
                      org-eval
                      org-expiry
                      org-interactive-query
                      org-man
                      org-collector
                      org-panel
                      org-screen
                      org-toc))
(eval-after-load 'org
 '(org-load-modules-maybe t))

;; Prepare stuff for org-export-backends
(setq org-export-backends '(org latex icalendar html ascii))

;; Org Mode. States colors
(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "green" :weight bold))
        ("DONE" . (:foreground "cyan" :weight bold))
        ("WAITING" . (:foreground "red" :weight bold))
        ("SOMEDAY" . (:foreground "gray" :weight bold))))

;; Org Mode. TODO States
(setq org-todo-keywords
 '((sequence
    "TODO(t)"  ; next action
    "STARTED(s)"
    "WAITING(w@/!)"
    "SOMEDAY(.)" "|" "DONE(x!)" "CANCELLED(c@)")))

;; Org Mode. Time Tracking
(setq org-expiry-inactive-timestamps t)
(setq org-clock-idle-time nil)
(setq org-log-done 'time)
(setq org-clock-continuously nil)
(setq org-clock-persist t)
(setq org-clock-in-switch-to-state "STARTED")
(setq org-clock-in-resume nil)
(setq org-show-notification-handler 'message)
(setq org-clock-report-include-clocking-task t)

;; Org Mode. Too many clock entries clutter up a heading
(setq org-log-into-drawer "LOGBOOK")
(setq org-clock-into-drawer 1)

;; Org Mode. Speed commands
(setq org-use-effective-time t)

(defun my/org-use-speed-commands-for-headings-and-lists ()
  "Activate speed commands on list items too."
  (or (and (looking-at org-outline-regexp) (looking-back "^\**"))
      (save-excursion (and (looking-at (org-item-re)) (looking-back "^[ \t]*")))))
(setq org-use-speed-commands 'my/org-use-speed-commands-for-headings-and-lists)

(with-eval-after-load 'org
   (add-to-list 'org-speed-commands-user '("x" org-todo "DONE"))
   (add-to-list 'org-speed-commands-user '("y" org-todo-yesterday "DONE"))
   (add-to-list 'org-speed-commands-user '("s" call-interactively 'org-schedule))
   (add-to-list 'org-speed-commands-user '("i" call-interactively 'org-clock-in))
   (add-to-list 'org-speed-commands-user '("o" call-interactively 'org-clock-out)))

;; Org Mode. Estimating Tasks
(add-hook 'org-clock-in-prepare-hook
          'my/org-mode-ask-effort)

(defun my/org-mode-ask-effort ()
  "Ask for an effort estimate when clocking in."
  (unless (org-entry-get (point) "Effort")
    (let ((effort
           (completing-read
            "Effort: "
            (org-entry-get-multivalued-property (point) "Effort"))))
      (unless (equal effort "")
        (org-set-property "Effort" effort)))))

;; Org Mode. Key Shortcuts
(bind-key "C-c a" 'org-agenda)
(bind-key "<f9> <f9>" 'org-agenda-list)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Clocktable By Tags
(require 'org-table)
(require 'org-clock)

(defun clocktable-by-tag/shift-cell (n)
  (let ((str ""))
    (dotimes (i n)
      (setq str (concat str "| ")))
    str))

(defun clocktable-by-tag/insert-tag (params)
  (let ((tag (plist-get params :tags))
	(globaltotal 0))
;;    (insert "|--\n")
    (insert (format "| %s | *Tag time* |\n" tag))
    (let ((total 0))
      (mapcar
       (lambda (file)
	 (let ((clock-data (with-current-buffer (find-file-noselect file)
			     (org-clock-get-table-data (buffer-name) params))))
	   (when (> (nth 1 clock-data) 0)
	     (setq total (+ total (nth 1 clock-data)))
	     (setq globaltotal (+ globaltotal (nth 1 clock-data)))
;;	     (insert (format "| | File *%s* | %.2f |\n"
;;			     (file-name-nondirectory file)
;;			     (/ (nth 1 clock-data) 60.0)))
;;	     (dolist (entry (nth 2 clock-data))
;;	       (insert (format "| | . %s%s | %s %.2f |\n"
;;			       (org-clocktable-indent-string (nth 0 entry))
;;			       (nth 1 entry)
;;			       (clocktable-by-tag/shift-cell (nth 0 entry))
;;			       (/ (nth 3 entry) 60.0))))
	     )))
       (org-agenda-files))
      (save-excursion
	(re-search-backward "*Tag time*")
	(org-table-next-field)
	(org-table-blank-field)
	(insert (format "%.2f" (/ total 60.0)))))
    (org-table-align)))

(defun org-dblock-write:clocktable-by-tag (params)
  (insert "| Tag | Headline | Time (h) |\n")
  (insert "|     |          | <r>  |\n")
  (insert "|-\n")
  (let ((tags (plist-get params :tags)))
    (mapcar (lambda (tag)
	      (setq params (plist-put params :tags tag))
	      (clocktable-by-tag/insert-tag params))
	    tags)))

(provide 'clocktable-by-tag)
