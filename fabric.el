;;; Fabric.el --- Launch Fabric using Emacs

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Author: Nicolas Lamirault <nicolas.lamirault@chmouel.com>
;; Homepage: https://github.com/nlamirault/fabric.el
;; Version: 0.2.O
;; Keywords: python, fabric

;;; Installation:

;; Use Melpa or Cask.

;;; Commentary:

;; The commands `fabric-run-command X`  runs
;; `fabric X` in the shell.
;; An exception is fabric-edit, which will open the Fabric file
;; 'fabfile.py' for editing.

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


(defvar fabric-program "/usr/bin/env fab" "Fabric binary path.")

(defvar fabric-default-task "-l" "Default task for Fabric.")

(defvar fabric-help-task "-h" "Help task for Fabric.")


;;; Utils


(defun fabric-get-root-directory ()
  "Return the complete path of the Fabric file."
  (concat (locate-dominating-file (buffer-file-name) "fabfile.py")
	  "fabfile.py"))


(defun fabric-make-command (cmd)
  "Return the Fabric command.
CMD is the Fabric task."
  (concat fabric-program " -f " (fabric-get-root-directory) " " cmd))


(defun fabric-command (cmd)
  "Run the Fabric command.
CMD is the Unix shell command to execute"
  ;;(compile cmd))
  (async-shell-command cmd "*Fabric*"))


;;; API

;;;###autoload
(defun fabric-list-commands ()
  "List of all fabric commands for project as strings."
  (interactive)
  (fabric-command (fabric-make-command fabric-default-task)))


;;;###autoload
(defun fabric-help ()
  "Display Fabric help."
  (interactive)
  (fabric-command (fabric-make-command fabric-help-task)))


;;;###autoload
(defun fabric-run-command (name)
  "Run a Fabric command specified in a fabfile.
NAME is the Fabric task to execute."
  (interactive "sEnter Fabric task:")
  (fabric-command (fabric-make-command name)))


;;;###autoload
(defun fabric-edit ()
  "Edit the Fabric file."
  (interactive)
  (find-file (fabric-get-root-directory)))


;;; End


(provide 'fabric)

;;; fabric.el ends here
