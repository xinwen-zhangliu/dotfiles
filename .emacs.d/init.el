(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ffffff" "#ffffff" "#ffffff" "#ffffff" "#928a7e" "#ffffff" "#ffffff" "gray90"])
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" "c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" "ff4d091b20e9e6cb43954e4eeae1c3b334e28b5923747c7bd5d2720f2a67e272" "652b55e5a130aa07f79c4c2d2101ff0fd6a3e189cdcd32654dc001a5070e533d" "7a4cc5d3766edb4ae68fe1decdbdac28a6891f2214659753d6c1cf6a953652a4" "bd4d3779a43199eecbf1caeb00c9de1d14b0a11d9eaf415e80f1e5a8a872c935" "fbef36c483d440ef0454ba905f0c686c3c802ebacf3e4050f9163809556cec19" "c453c41cabd16e5601297e29a43aa42db6571e9e6e5264d44a4ae10a80a9f85d" "37f54916e3e4cb0705176041c8a059b720e743040bcf77e5584ee79e90d529bd" "c52372f8865c19ac71477c35b06428f4b0fa989f092c0f64636d76d8096a1f1d" "4b2e7018ab458905983882edd73c89dbf4bf76d2e229e66bdcaf2ed02795ed54" "03aa756e02e64b21c0f53bd525c4901d52baec1f8f5a2bc332748b6943a7875b" "f76ebf242bba5e36f804980fdf07ee95306fa7c75fb3d4f63eb150c274a3dd7a" "b7bbd9fddd6796033d40ca9c4c1d8bfcc18b5963e08443cd60383d048245e24a" "bf083d5c07cb9301a7e798a6bd2e224e55cb40abb6006dd5eb47f9ba94548bcb" "715c5ce3485b5e442b413cfdaaba4ab22b9836983d9856541284ea0420ff73b4" "01254ddc7012bfc7bce3cc64e82f07c7f28fb827581a6aa98f497a30c3ea1a36" "4068a6bb6b5b143af76c843f1f72b3219d8f53691d9583c38c81943fcd807e78" "c4c83a3d29a78c7f30380c150658ce7eee91ddef6159cbbb8f6323585b4fd9f4" "11d4aef12dd4b9c008e005510a4cc35b3e797010d6ed7906cb6a3eaf4041590c" "0882034fa346f7288c51c93bb18664f30f4ca567e15fa67ea5c99099cde03711" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "a36614356924f3cffc450c43d3ed8dace20218b41a1201f9c1173a1a0e0ac297" "3d3d7383a479aed14076ab057cc4bd6018cb6962ce4b197971d379eb99d0f420" "c832527516f15808747ca5c871ecba3a9f69d9b2a4ca8c63bcbb54ffbee462d1" "fa1ad9f82da8bed6eafa30379bef8e3c7531c76a16f3873a786ebafbca1474ca" "6ed2e9c641e0a1a440338fc81c2ac0fd52f8f434ff249dbd079c3e678fd7b1cc" "5d9639adbc5d2b31e3491ad378e342df9a69631c5d8fa6bd0802f6591aeddfdd" "aea4df979f530691c245ce8a597dde7f6fdb673971ea4a8d6f68024829e46bfb" "af3c418e2d74e769cfb6363be69afdeb8d22839f48fb5283036703b2a7e31f3c" "bab2326f7c5e8e9b6fd5692b0ef21a5bb9f650f8010ab316e0c642af4e0909f2" "41fbaada5d9f7605d393c49a2f75f05be2d10374600f5a8e31247e61b811377f" "5024e7c605ffbc687a5e2d0abcaddcad30d518a54b6974bb5ae616d6a83918a1" "75d8e70f2aa9768177c3595b003acb8fa5ee806b5e78e401f790ceb0ca0aaf8d" "89908a100287391ff0a5bc733f9f31fba7bc833094cbe92a8bfc9d9dd378a7e2" default))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jdee-server-dir "~/myjars")
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(racket-mode vterm exec-path-from-shell toml-mode rust-playground yasnippet flycheck lsp-ui company use-package lsp-mode rustic crdt eglot zenburn-theme planet-theme rust-mode dockerfile-mode projectile yaml-mode vala-mode org-tree-slide org-modern org-super-agenda org-superstar org-attach-screenshot org-autolist org-auto-expand org-appear org-alert org-agenda-property org-ac cff org ggtags meson-mode all-the-icons neotree haskell-mode which-key auctex))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-error-description-error ((t (:foreground "#ffffff" :weight bold))))
 '(TeX-error-description-tex-said ((t (:foreground "#928a7e"))))
 '(alert-urgent-face ((t (:foreground "#ffffff" :weight bold))))
 '(ansi-color-blue ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(compilation-error ((t (:foreground "#ffffff" :weight bold))))
 '(compilation-info ((t (:foreground "#ffffff" :weight bold))))
 '(compilation-mode-line-exit ((t (:inherit compilation-info :foreground "#ffffff" :weight bold))))
 '(compilation-mode-line-fail ((t (:weight bold :foreground "#928a7e" :inherit compilation-error))))
 '(fill-column-indicator ((t (:foreground "#4e5052" :weight extra-bold))))
 '(flycheck-error-list-info ((t (:foreground "#ffffff"))))
 '(font-latex-bold-face ((t (:foreground "#c0c5ce" :inherit bold))))
 '(font-latex-italic-face ((t (:foreground "#c0c5ce" :inherit italic))))
 '(font-latex-math-face ((t (:foreground "#928a7e" :weight bold))))
 '(font-latex-script-char-face ((t (:foreground "#c0c5ce"))))
 '(font-latex-sectioning-2-face ((t (:foreground "#ffffff" :weight bold :height 1.1))))
 '(font-latex-warning-face ((t (:foreground "#c0c5ce" :inherit bold))))
 '(font-lock-string-face ((t (:foreground "#928a7e"))))
 '(font-lock-type-face ((t (:foreground "#c0c5ce"))))
 '(jdee-font-lock-constant-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-modifier-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-package-face ((t (:foreground "#928a7e"))))
 '(jdee-font-lock-private-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-public-face ((t (:foreground "#ffffff" :weight bold))))
 '(neo-banner-face ((t (:foreground "#c0c5ce" :weight bold))))
 '(neo-dir-link-face ((t (:foreground "#ffffff" :weight bold))))
 '(neo-file-link-face ((t (:foreground "#c0c5c7"))))
 '(term-color-bright-cyan ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-bright-green ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-bright-red ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-cyan ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-green ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-red ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-yellow ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(whitespace-line ((t (:foreground "orange")))))
;; Windmove keybindings
(windmove-default-keybindings 's)

;; Terminal Binding
;; (global-set-key (kbd "C-c t") (kbd "M-! terminator RET"))

;; Enable Projectile globally (projectile-global-mode)
(defun projectile-term ()
  (interactive)
  (let ((root (projectile-project-root))
        (buff-name (concat " [term] " (projectile-project-root))))
    (if (get-buffer buff-name)
        (switch-to-buffer-other-window buff-name)
      (progn 	(split-window-sensibly (selected-window))
                (other-window 1)
                (setq default-directory root)
                (ansi-term (getenv "SHELL"))
                (rename-buffer buff-name t)))))
(global-set-key (kbd "C-c C-t") 'projectile-term)

;; add hook for rust-abalyzer with eglot
(add-hook 'rust-mode-hook 'eglot-ensure)


;; move to the neotree buffer
(global-set-key (kbd "s-s") 'neotree-show)

(defun terminator ()
  (interactive)
  (let ((terminator "terminator"))
    (start-process terminator nil terminator "-cd" (projectile-project-root))))
(global-set-key (kbd "C-c t") 'terminator)


;; To-Do List Bind
(set-register ?a '(file . "~/Documentos/ToDo.org"))


;; Load prolog mode
;;(require 'prolog-indent)

;; Backspace modification
(defun ryanmarcus/backward-kill-word ()
  "Remove all whitespace if the character behind the cursor is whitespace, otherwise remove a word."
  (interactive)
  (if (looking-back "[ \n]")
      ;; delete horizontal space before us and then check to see if we
      ;; are looking at a newline
      (progn (delete-horizontal-space 't)
             (while (looking-back "[ \n]")
               (backward-delete-char 1)))
    ;; otherwise, just do the normal kill word.
    (backward-kill-word 1)))



;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Load 'all-the-icons
;;(defun neotree-icons (display-graphic-p)
;;(when (display-graphic-p)
(require 'all-the-icons)
;;))
;;(add-hook 'server-after-make-frame-hook 'neotree-icons)

;; Delete text that is being selected
(delete-selection-mode 1)

;; PDF-opener : Zathura
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Zathura" "zathura %o")))
     (setq TeX-view-program-selection '((output-pdf "Zathura")))))
(add-to-list 'load-path "~/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; Set the neo-window-width to the current width of the
;; neotree window, to trick neotree into resetting the
;; width back to the actual window width.
;; Fixes: https://github.com/jaypei/emacs-neotree/issues/262
(eval-after-load "neotree"
  '(add-to-list 'window-size-change-functions
                (lambda (frame)
                  (let ((neo-window (neo-global--get-window)))
                    (unless (null neo-window)
                      (setq neo-window-width (window-width neo-window)))))))

;; (setq neo-autorefresh t)

;; Kill whole-line, copying it to clipboard
;; Sets `C-c d` to `M-x kill-whole-line`
(global-set-key "\C-cd" 'kill-whole-line)

;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;; Sets the neotree buffer wodth to be variable.
(setq neo-window-fixed-size nil)

;; Disables line numbers for neotree
(defun my/neotree-hook (_unused)
  (display-line-numbers-mode -1))
(add-hook 'neo-after-create-hook 'my/neotree-hook)

;; Sets the theme for neotree
(setq neo-theme 'icons)
;; (defun set-neotree-theme (_unused)
;;   (interactive)
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; )
;; (add-hook 'server-after-make-frame-hook 'set-neotree-theme)

;; Set the neo-window-width to the current width of the
;; neotree window, to trick neotree into resetting the
;; width back to the actual window width.
;; Fixes: https://github.com/jaypei/emacs-neotree/issues/262
(eval-after-load "neotree"
  '(add-to-list 'window-size-change-functions
                (lambda (frame)
                  (let ((neo-window (neo-global--get-window)))
                    (unless (null neo-window)
                      (setq neo-window-width (window-width neo-window)))))))

;; Delete trailing whitespace binding
(global-set-key (kbd "s-d") 'delete-trailing-whitespace)

;; 'Uncomment-region binding
(global-set-key (kbd "C-c v") 'uncomment-region)
(global-set-key (kbd "C-c c") 'comment-region)

;; Path of backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Hide Show
(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (current-column))))))

(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
      (if (condition-case nil
              (hs-toggle-hiding)
            (error t))
          (hs-show-all))
    (toggle-selective-display column)))

(load-library "hideshow")
;; (global-set-key (kbd "C-+") 'toggle-hiding)
;; (global-set-key (kbd "C-\\") 'toggle-selective-display)
(global-set-key (kbd "C-+") 'hs-show-block)
(global-set-key (kbd "C--") 'hs-hide-block)
(global-set-key (kbd "C-c C--") 'hs-hide-level)
(global-set-key (kbd "C-c C-+") 'hs-show-all)

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

;; Org-mode
(require 'org)
(require 'org-attach-screenshot)
(require 'org-autolist)
(require 'org-auto-expand)
(require 'org-appear)
(require 'org-alert)
(require 'org-agenda-property)
(require 'org-ac)
(require 'org-super-agenda)
(require 'org-tree-slide)
(require 'org-modern)
(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
(require 'org-superstar)

(setq
 ;; Edit settings
 org-auto-align-tags nil
 org-tags-column 0
 org-catch-invisible-edits 'show-and-error
 org-special-ctrl-a/e t
 org-insert-heading-respect-content t

 ;; Org styling, hide markup etc.
 org-hide-emphasis-markers t
 org-pretty-entities t
 org-ellipsis "…"

 ;; Agenda styling
 org-agenda-tags-column 0
 org-agenda-block-separator ?─
 org-agenda-time-grid
 '((daily today require-timed)
   (800 1000 1200 1400 1600 1800 2000)
   " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
 org-agenda-current-time-string
 "⭠ now ─────────────────────────────────────────────────")
;; Source code navigation
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)
(define-key ggtags-mode-map (kbd "C-f") 'ggtags-find-tag-dwim)

;; Quickly switch between C/C++ header and
;; a source file with the same name located
;; in the directory tree or a git repository.
(require 'cff)
;; defines shortcut for find source/header file for the current
;; file
(add-hook 'c++-mode-hook
           (lambda ()
             (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))
(add-hook 'c-mode-hook
           (lambda ()
             (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))


;; Move selected region (or line) up/down
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg)
          (when (and (eval-when-compile
                       '(and (>= emacs-major-version 24)
                             (>= emacs-minor-version 3)))
                     (< arg 0))
            (forward-line -1)))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))


(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)

;; Nord-theme
;; (add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
;; (load-theme 'nord t)

;; Source: https://www.emacswiki.org/emacs/misc-cmds.el
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

(setenv "PATH" (concat "/Library/TeX/texbin:"
                       (getenv "PATH")))
(add-to-list 'exec-path "/Library/TeX/texbin")

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))


;; Rust dev mode

(use-package rustic
  :ensure
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-S" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status)
              ("C-c C-c e" . lsp-rust-analyzer-expand-macro)
              ("C-c C-c d" . dap-hydra)
              ("C-c C-c h" . lsp-ui-doc-glance))
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  ;; (setq lsp-enable-symbol-highlighting nil)
  ;; (setq lsp-signature-auto-activate nil)

  ;; comment to disable rustfmt on save
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

(defun rk/rustic-mode-hook ()
  ;; so that run C-c C-c C-r works without having to confirm, but don't try to
  ;; save rust buffers that are not file visiting. Once
  ;; https://github.com/brotzeit/rustic/issues/253 has been resolved this should
  ;; no longer be necessary.
  (when buffer-file-name
    (setq-local buffer-save-without-query t))
  (add-hook 'before-save-hook 'lsp-format-buffer nil t))

;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; for rust-analyzer integration

(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  ;; what to use when checking on-save. "check" is default, I prefer clippy
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.2)
  ;; This controls the overlays that display type and other hints inline. Enable
  ;; / disable as you prefer. Well require a `lsp-workspace-restart' to have an
  ;; effect on open projects.
  (lsp-rust-analyzer-server-display-inlay-hints t)
  (lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial")
  (lsp-rust-analyzer-display-chaining-hints t)
  (lsp-rust-analyzer-display-lifetime-elision-hints-use-parameter-names nil)
  (lsp-rust-analyzer-display-closure-return-type-hints t)
  (lsp-rust-analyzer-display-parameter-hints nil)
  (lsp-rust-analyzer-display-reborrow-hints nil)
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; inline errors

(use-package flycheck :ensure)


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; auto-completion and code snippets

(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(use-package company
  :ensure
  :bind
  (:map company-active-map
              ("C-n". company-select-next)
              ("C-p". company-select-previous)
              ("M-<". company-select-first)
              ("M->". company-select-last))
  (:map company-mode-map
        ("<tab>". tab-indent-or-complete)
        ("TAB". tab-indent-or-complete)))

(defun company-yasnippet-or-completion ()
  (interactive)
  (or (do-yas-expand)
      (company-complete-common)))

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "::") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; Create / cleanup rust scratch projects quickly

(use-package rust-playground :ensure)


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; for Cargo.toml and other config files

(use-package toml-mode :ensure)


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; setting up debugging support with dap-mode

(use-package exec-path-from-shell
  :ensure
  :init (exec-path-from-shell-initialize))

(when (executable-find "lldb-mi")
  (use-package dap-mode
    :ensure
    :config
    (dap-ui-mode)
    (dap-ui-controls-mode 1)

    (require 'dap-lldb)
    (require 'dap-gdb-lldb)
    ;; installs .extension/vscode
    (dap-gdb-lldb-setup)
    (dap-register-debug-template
     "Rust::LLDB Run Configuration"
     (list :type "lldb"
           :request "launch"
           :name "LLDB::Run"
	   :gdbpath "rust-lldb"
           ;; uncomment if lldb-mi is not in PATH
           ;; :lldbmipath "path/to/lldb-mi"
           ))))


;; Custom Ctrl-delete

(defun aborn/backward-kill-word ()
  "Customize/Smart backward-kill-word."
  (interactive)
  (let* ((cp (point))
         (backword)
         (end)
         (space-pos)
         (backword-char (if (bobp)
                            ""           ;; cursor in begin of buffer
                          (buffer-substring cp (- cp 1)))))
    (if (equal (length backword-char) (string-width backword-char))
        (progn
          (save-excursion
            (setq backword (buffer-substring (point) (progn (forward-word -1) (point)))))
          (setq ab/debug backword)
          (save-excursio
            (when (and backword          ;; when backword contains space
                       (s-contains? " " backword))
              (setq space-pos (ignore-errors (search-backward " ")))))
          (save-excursion
            (let* ((pos (ignore-errors (search-backward-regexp "\n")))
                   (substr (when pos (buffer-substring pos cp))))
              (when (or (and substr (s-blank? (s-trim substr)))
                        (s-contains? "\n" backword))
                (setq end pos))))
          (if end
              (kill-region cp end)
            (if space-pos
                (kill-region cp space-pos)
              (backward-kill-word 1))))
      (kill-region cp (- cp 1)))         ;; word is non-english word
    ))

(global-set-key  [C-backspace]
            'aborn/backward-kill-word)


;; Auto-complete [Company mode]
(require 'company-auctex)

(company-auctex-init)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(define-key company-active-map (kbd "<tab>") #'company-complete-selection)
(add-to-list 'company-backends 'company-c-headers)

;; Racket
(require 'smartparens-config)

;; Always start smartparens mode in racket-mode.
(add-hook 'racket-repl-mode #'smartparens-mode)
(smartparens-global-mode t)

;; 120 character wrap 
(add-hook 'text-mode-hook #'auto-fill-mode)
(setq-default fill-column 120)
(add-hook 'prog-mode-hook #'auto-fill-mode)

;; Thou shalt not cross 80 columns in thy file.
;;(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
;; (defun prog-mode-header-line ()
;;   "Setup the `header-line-format' on for buffers."
;;   (setq header-line-format 
;;         (list " " (make-string 80 ?-) "|")))

;; (add-hook 'prog-mode-hook #'prog-mode-header-line)


(setq-default
 whitespace-line-column 80
 whitespace-style       '(face lines-tail))
(add-hook 'prog-mode-hook #'whitespace-mode)
