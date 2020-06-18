(require 'moody)
(require 'minions)
(require 'keycast)

(setq x-underline-at-descent-line t)
(setq minions-mode-line-lighter "")
(setq minions-mode-line-delimiters '("" . ""))
(setq moody-mode-line-height 30)
(setq keycast-separator-width 2)
(setq keycast-insert-after 'moody-mode-line-buffer-identification)
(setq keycast-window-predicate  'moody-window-active-p)

(column-number-mode -1)
(line-number-mode t)
(moody-replace-mode-line-buffer-identification)
(moody-replace-vc-mode)
(minions-mode 1)

(defun set-moody-face (frame)
	(let ((line (face-attribute 'mode-line :underline frame)))
		(set-face-attribute 'mode-line          frame :overline   line)
		(set-face-attribute 'mode-line-inactive frame :overline   line)
		(set-face-attribute 'mode-line-inactive frame :underline  line)
		(set-face-attribute 'mode-line          frame :box        nil)
		(set-face-attribute 'mode-line-inactive frame :box        nil)))

(add-to-list 'after-make-frame-functions 'set-moody-face t)
(add-to-list 'keycast-substitute-alist '(self-insert-command "." "Typing…"))
(add-to-list 'keycast-substitute-alist '(org-self-insert-command "." "Typing…"))


(provide 'setup-mode-line)
