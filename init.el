;;; init.el - Where it all begins


(defconst emacs-dir
  (file-name-directory (or (buffer-file-name) load-file-name))
  "Path to config directory.")

(defconst vendor-dir
  (expand-file-name "vendor" emacs-dir)
  "Path to vendor directory.")

;; Turn off early to avoid momentary display.
(mapc
 (lambda (mode)
   (if (fboundp mode)
       (funcall mode -1)))
 '(menu-bar-mode tool-bar-mode scroll-bar-mode))

(load (expand-file-name "rejeep-paths.el" emacs-dir))

(require 'cl)
(require 'package-spec)
(require 'misc)
(require 'rejeep-ido)
(require 'rejeep-defuns)
(require 'rejeep-misc)
(require 'rejeep-bindings)
(require 'rejeep-programming)

(if (eq system-type 'darwin)
    (require 'rejeep-osx))
