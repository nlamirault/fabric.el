;; test-helper.el --- Test helpers for Fabric.el

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Author: Nicolas Lamirault <nicolas.lamirault@chmouel.com>
;; Homepage: https://github.com/nlamirault/fabric.el

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


;;; Code


(setq debugger-batch-max-lines (+ 50 max-lisp-eval-depth)
      debug-on-error t)


(defconst fabric-testsuite-dir (f-parent (f-this-file))
  "The testsuite directory.")

(defconst fabric-source-dir
  (f-parent fabric-testsuite-dir)
  "The Fabric.el source directory.")

(message "Running tests on Emacs %s" emacs-version)

(message "Load Fabric : %s" fabric-source-dir)
(load (s-concat fabric-source-dir "/fabric.elc"))



(provide 'test-helper)

;;; test-helper.el ends here
