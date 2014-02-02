;;; fabric-version-test.el --- Tests for version information

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Author   : Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; Commentary:
;; Unit tests for version information

;;; Code:


(require 'test-helper)

(ert-deftest fabric-mode-library-version ()
  :expected-result (if (executable-find "cask") :passed :failed)
  ;;  The default directory must end with a slash
  (let* ((cask-version (car (process-lines "cask" "version")))
	 ;;(lib-version (fabric-mode-library-version)))
	 )
    ;;(message "CS mode : %s" lib-version)
    (message "CS Cask version: %s" cask-version)
    ;;(should (string= version (fabric-mode-library-version)))))
    (should (string= "0.1.0" cask-version))))


;;; version-test.el ends here
