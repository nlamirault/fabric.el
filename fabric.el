;;; Fabric.el --- Launch Fabric using Emacs

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Author: Nicolas Lamirault <nicolas.lamirault@chmouel.com>
;; Homepage: https://github.com/nlamirault/fabric.el
;; Version: 0.1
;; Keywords: python, fabric

;;; Installation:

;; Use Melpa or Cask.

;;; Commentary:

;; Thanks to Tox.el for the inspiration.

;;; License:

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:


(defvar fabric-program "/usr/local/bin/fab" "Fabric binary path.")

(defvar fabric-default-task "-l" "Default task for Fabric")

(defvar fabric-help-task "-h" "Help task for Fabric")


;;; Utils


(defun fabric-get-root-directory ()
  "Return the root directory of the Fabric file."
  (interactive "P")
  (concat (locate-dominating-file (buffer-file-name) "fabfile.py")
	  "fabfile.py"))


(defun fabric-make-command (cmd)
  "Return the Fabric command."
  (concat fabric-program " -f " (fabric-get-root-directory) " " cmd))


(defun fabric-run (cmd)
  "Run the Fabric command."
  (compile cmd))


;;; API

;;;###autoload
(defun fabric-list-commands ()
  "List of all fabric commands for project as strings"
  (interactive)
  (fabric-run (fabric-make-command fabric-default-task)))


;;;###autoload
(defun fabric-help ()
  "Display Fabric help"
  (interactive)
  (fabric-run (fabric-make-command fabric-help-task)))


;;;###autoload
(defun fabric-run-command (name)
  "Run a Fabric command specified in a fabfile."
  (interactive "P")
  (fabric-run (fabric-make-command name)))


;;; End


(provide 'fabric)

;;; fabric.el ends here
