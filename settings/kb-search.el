(require 'ivy)
(require 'swiper)
(require 'grep)
(require 'wgrep)
(require 'counsel)
(require 'iy-go-to-char)
(require 'ibuffer)

(ivy-mode 1)
(counsel-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
(setq wgrep-auto-save-buffer t)

(defun ta-toggle-write-mode ()
  "Toggle to the Writable variant of the current mode.

Call command `dired-toggle-read-only' if `major-mode' is equal
`dired-mode' and call command `wgrep-change-to-wgrep-mode' if
`major-mode' is equal to `grep-mode'."
  (interactive)
  (cond ((string-equal major-mode "dired-mode")
         (call-interactively 'dired-toggle-read-only))
        ((memq major-mode '(grep-mode ivy-occur-grep-mode))
         (call-interactively 'wgrep-change-to-wgrep-mode))
        (t (message "You have to be in either in `dired-mode' or
`grep-mode' to execute this command"))))

(defun ta-w-abort-changes ()
  "Abort changes and return to the appropiate mode.

Call command `wdired-abort-changes' if `major-mode' is
`wdired-mode' and call command `wgrep-abort-changes' if
`major-mode' is `grep-mode'."
  (interactive)
  (cond ((string-equal major-mode "wdired-mode")
         (call-interactively 'wdired-abort-changes))
        ((memq major-mode '(grep-mode ivy-occur-grep-mode))
         (call-interactively 'wgrep-abort-changes))
        (t (message "You have to be in either in `wdired-mode' or
`grep-mode' to execute this command"))))

(defun ta-w-exit ()
  "Exit writable mode and return to the appropiate mode.

Call command `wdired-exit' if `major-mode' is
`wdired-mode' and call command `wgrep-exit' if
`major-mode' is `grep-mode'."
  (interactive)
  (cond ((string-equal major-mode "wdired-mode")
         (call-interactively 'wdired-exit))
        ((memq major-mode '(grep-mode ivy-occur-grep-mode))
         (call-interactively 'wgrep-exit))
        (t (message "You have to be in either in `wdired-mode' or
`grep-mode' to execute this command"))))

(defun ta-w-finish-edit ()
  "Abort changes and return to the appropiate mode.

Call command `wdired-finish-edit' if `major-mode' is
`wdired-mode' and call command `wgrep-finish-edit' if
`major-mode' is `grep-mode'."
  (interactive)
  (cond ((string-equal major-mode "wdired-mode")
         (call-interactively 'wdired-finish-edit))
        ((memq major-mode '(grep-mode ivy-occur-grep-mode))
         (call-interactively 'wgrep-finish-edit))
        (t (message "You have to be in either in `wdired-mode' or
`grep-mode' to execute this command"))))

(defhydra hydra-toggle
  (
   :pre (hydra-color-pre)
   :post (hydra-color-post)
   :hint nil)
  ("n" ta-toggle-write-mode :color blue)
  ("i" ta-w-abort-changes :color blue)
  ("e" ta-w-exit :color blue)
  ("f" ta-w-finish-edit :color blue)
  ;; ---
  ("M--" undo)
  ("q" nil))

(global-set-key (kbd "M-t") 'hydra-toggle/body)

(global-set-key (kbd "M-s") 'swiper)
(define-key ibuffer-mode-map (kbd "M-s") 'swiper)
(define-key dired-mode-map (kbd "M-s") 'swiper)
(global-set-key (kbd "M-r") 'rgrep)
(global-set-key (kbd "M-.") 'swiper-thing-at-point)
(global-set-key (kbd "M-S") 'query-replace)
(global-set-key (kbd "M-R") 'query-replace-regexp)

(define-key grep-mode-map (kbd "M-p") 'windmove-up)
(define-key grep-mode-map (kbd "M-n") 'windmove-down)
(define-key ivy-minibuffer-map (kbd "<up>") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "<down>") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "M-e") 'ivy-immediate-done)
(define-key ivy-minibuffer-map (kbd "M-a") 'ivy-dispatching-done)
(define-key ivy-minibuffer-map (kbd "M-s") 'ivy-occur)
(define-key swiper-map (kbd "M-q") 'minibuffer-keyboard-quit)
(define-key swiper-map (kbd "M-c") 'swiper-mc)
(global-set-key (kbd "C-M-a") 'iy-go-to-char-backward)
(global-set-key (kbd "C-M-e") 'iy-go-to-char)


(provide 'kb-search)
