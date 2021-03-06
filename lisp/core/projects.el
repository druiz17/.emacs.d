(defun projects/setup-projectile ()
  (use-package counsel-projectile
    :ensure t)

  (use-package projectile
    :ensure t
    :config
    (progn
      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
      (projectile-mode +1)
      (setq projectile-globally-ignored-directories
	    (append
	     '("build" ".git" ".cache" "auto-save-list" "elpa"
	       "transient" ".meta" "x64" "andriod" "server-console"
	       "ice-server" "compiledResources" "external" "i18n" "icon" "ui"
	       "fonts" "icons" "meshes" "sounds" "snapshot" "images"
	       "mention-sounds" "visage" "stage" "packages" "debian"
	       "Binaries" "Intermediate" "DerivedDataCache" ".vscode" ".kdev4"
	       "Saved" "Content" "images" "mention-sounds" "visage" "stage" "packages" "debian" 
	       "bionic-amd64-Debug")))

      (setq projectile-globally-ignored-files
	    (append
	     '("ArcherySource.pri" "ArcheryInclude.pri" "ArcheryHeader.pri"
	       "ArcheryDefines.pri" "ArcheryConfig.pri" "ArcheryCodeLitePreProcessor.txt"
	       "ArcheryCodeCompletionFolders.txt" "Archery.workspace" "Archey.pro" "Archery.kdev4"
	       "Archery.code-workspace")))

      (setq projectile-enable-caching t)
      (counsel-projectile-mode))))

(provide 'projects)
