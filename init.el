(package-initialize)

(setq load-prefer-newer t)
(defvar elpa-https nil)
(defvar emacs-insecure t)
(load-file (concat (file-name-directory load-file-name)
                   "lisp/core/load-paths.el"))

(require 'benchmark-init-loaddefs)
(require 'utils)
(require 'configure)
(benchmark-init/activate)
(configure/initialize)
(configure/archive-packages)
(configure/load-my-layers-file)
(configure/load-layers my-layers)
(when (system-is-windows)
  ;; clone and complie https://github.com/d5884/fakecygpty.
  ;; copy exe to path
  (require 'fakecygpty)
  (fakecygpty-activate)
  (setq default-directory (getenv "HOME"))
  (load-file "~/.emacs.d/themes/solarized-definitions.el"))
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(when (not (is-system-window-nil))
  (load-theme 'material t))
