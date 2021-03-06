(defvar i3-font-lock-keywords
  '(("bindsym" . font-lock-keyword-face)
    ("^set" . font-lock-keyword-face)
    ("^mode" . font-lock-keyword-face)
    ("^exec" . font-lock-keyword-face)
    ("^workspace" . font-lock-keyword-face)
    ("^bar" . font-lock-builtin-face)
    ("\\(colors\\) [{]+" 1 font-lock-builtin-face t)
    ("^font" . font-lock-builtin-face)
    ("^floating_modifier" . font-lock-builtin-face)
    ;; for ~/.i3status.conf file
    ("^[ \t]*\\(.+?\\)\\(?:\\[\\(.*?\\)\\]\\)?[ \t]*[^+]="
     1 font-lock-variable-name-face t)
    ("\\(^order\\) \\(?:[+][=]+\\)" 1 font-lock-keyword-face t)
    ("\\(general\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(run_watch VPN\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(run_watch DHCP\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(wireless _first_\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(disk\\) .* [{]+" 1 font-lock-builtin-face t)
    ("\\(load\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(cpu_usage\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(battery 0\\) [{]+" 1 font-lock-builtin-face t)
    ("\\(tztime local\\) [{]+" 1 font-lock-builtin-face t)
    )
  "Font lock keywords to use in i3-conf-mode.

These keywords are used in the i3 configuration file and i3status
configuration.")


(define-derived-mode i3-conf-mode sh-mode "i3-conf"
  "Major mode for i3 configuration files."
  (font-lock-add-keywords nil i3-font-lock-keywords))


(provide 'setup-i3)
