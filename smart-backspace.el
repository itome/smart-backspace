;;; -*-coding: utf-8 -*-
;;; smart-backspace.el intellj like backspace

;; Copyright (C) 2017  takeshi tsukamoto

;; Author: George Kettleborough <g.kettleborough@member.fsf.org>
;; Author: Takeshi Tsukamoto <t.t.itm.0403@gmail.com>
;; Created: 20171012
;; Version: 0.1.0
;; Status: experimental

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;; backspace like intellij idea

;; set keybindings for smart-backspace
;; example
;;   (define-key evil-insert-state-map [?\C-?] 'smart-backspace)
;;   (define-key key-translation-map [?\C-h] [?\C-?])

;;; Code:
(defun smart-backspace (arg)
  (interactive "P")
  (let* ((current (point))
         (beginning (save-excursion
                      (beginning-of-line)
                      (point))))
    (if (string-match "^[ \t]*$" (buffer-substring beginning current))
        (progn
          (kill-line 0)
          (delete-backward-char 1)
          (indent-according-to-mode))
      (delete-backward-char 1))))

(provide 'smart-backspace)
;;; smart-backspace.el ends here
