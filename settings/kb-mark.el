(require 'kb)
(require 'multiple-cursors)
(require 'expand-region)
(require 'iedit)
(require 'smartparens)

(setq mark-ring-max 8)
(setq global-mark-ring-max 8)
(setq expand-region-preferred-python-mode 'fgallina-python)

(defun ta-pop-local-mark-ring ()
  (interactive)
  (set-mark-command t))

(defun ta--point-at-beginnig-sp-sexp-p ()
  "Return non-nil if `point' is at the beginning of a sp-sexp

and :op non empty. See `sp-get-thing'."
  (let ((ok (sp-get-thing)))
    (when ok
      (when (and (eq (point) (sp-get ok :beg))
                 (not (string-empty-p (sp-get ok :op))))
        (point)))))

(defun ta--mark-sexp-at-point ()
  "Mark the `sexp' at point."
  (let ((sexp-beg (beginning-of-thing 'sexp))
        (sexp-end (end-of-thing 'sexp)))
    (goto-char sexp-end)
    (set-mark sexp-end)
    (goto-char sexp-beg)))

(defun ta-mark-sexp-at-point ()
  "Mark the `sexp' at point. See `sexp-at-point' and `sp-mark-sexp'."
  (interactive)
  (if (or (ta--point-at-beginnig-sp-sexp-p)
          (eq (following-char) ?<))
      (sp-mark-sexp)
    (if (eq (preceding-char) ?\")
        (progn
          (sp-backward-sexp)
          (sp-mark-sexp))
      (if (and (memq (following-char) '(32 ?\) ?\] ?\} ?>))
               (looking-back "[[:alnum:]]" 1))
          (backward-char 1))
      (ta--mark-sexp-at-point))))

(defun ta-point-in-string-p (pt)
  "Returns t if PT is in a string"
  (eq 'string (syntax-ppss-context (syntax-ppss pt))))

(defun ta-goto-begining-of-string (pt)
  "Go to begining of the string if PT is inside a string.
Return nil if PT isn't inside a string. See the function `ta-point-in-string-p'"
  (if (ta-point-in-string-p pt)
      (goto-char (nth 8 (syntax-ppss pt)))
    nil))

(defun ta-mark-inside-pairs ()
  "An other way to do `er/mark-inside-pairs' but work for sgml-tag too."
  (interactive)
  (ta-goto-begining-of-string (point))
  ;; todo: do thing when inside a tag <tag name="tony"> (maybe use the function sgml-begining-of-tag)
  (sp-backward-up-sexp)
  (sp-mark-sexp)
  (sp-down-sexp)
  (exchange-point-and-mark)
  (sp-backward-down-sexp)
  (exchange-point-and-mark))

(defun ta-mark-inside-quotes-or-pairs (&optional arg)
  "Mark inside quotes calling `er/mark-inside-quotes'.

When ARG is 4, mark inside pairs calling `ta-mark-inside-pairs'."
  (interactive "p")
  (if (equal arg 4)
			(call-interactively 'ta-mark-inside-pairs)
		(call-interactively 'er/mark-inside-quotes)))


(defhydra hydra-mc (
                    :pre (hydra-color-pre-mc)
                    :post (hydra-color-post)
                    :hint nil)
  ("t" hydra-lines/body :color blue)
	("p" mc/mark-previous-like-this)
  ("n" mc/mark-next-like-this)
  ("b" mc/mark-previous-like-this-word)
  ("f" mc/mark-next-like-this-word)
  ("s" mc/unmark-previous-like-this)
  ("d" mc/unmark-next-like-this)
  ("/" mc/mark-sgml-tag-pair)
	("i" mc/insert-numbers)
	("M-c" query-replace :color blue)
	("c" query-replace-regexp :color blue)
	("M-s" replace-string :color blue)
	("M-r" replace-regexp :color blue)
  ("q" nil))

(defadvice mc/keyboard-quit (after ta-mc/keyboard-quit-advice activate)
  (hydra-color-post))

(global-set-key (kbd "M-l") 'ta-pop-local-mark-ring)
(global-set-key (kbd "M-<return>") 'newline)
(global-set-key (kbd "M-c") 'hydra-mc/body)
(global-set-key (kbd "<mouse-3>") 'mc/add-cursor-on-click)

(key-chord-define-global ">p" 'iedit-mode)

(global-set-key (kbd "<prior>") 'er/expand-region)
(global-set-key (kbd "<next>") 'ta-mark-inside-quotes-or-pairs)
(global-set-key (kbd "<up>") 'ta-mark-sexp-at-point)

(provide 'kb-mark)
