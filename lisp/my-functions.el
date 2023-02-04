(defun from-type-to-function ()
  "changes all caps with lowdashes text to cammelCase"
  (interactive)
  (downcase-word 1)
  (while (eq ?_ (char-after))
    (delete-char 1)
    (capitalize-word 1)))
