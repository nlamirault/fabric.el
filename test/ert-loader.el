;;; ert-loader.el --- Load Ert if not included in Emacs

(require 'f)
(eval-when-compile
  (require 'cl))


(defvar fabric-root-path
  (f-parent (f-parent load-file-name))
  "Path to root.")

(defvar fabric-vendor-path
  (f-expand "vendor" fabric-root-path)
  "Path to vendor.")

(unless (require 'ert nil 'noerror)
  (require 'ert (f-expand "ert" fabric-vendor-path)))

