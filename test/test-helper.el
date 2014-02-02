;; test-helper.el --- Test helpers for Fabric.el

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Author: Nicolas Lamirault <nicolas.lamirault@chmouel.com>
;; Homepage: https://github.com/nlamirault/fabric.el

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
