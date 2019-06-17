;; -*- mode: emacs-lisp; lexical-binding: t -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(
     ;; spell-checking
     ;; version-control
     osx
     auto-completion
     better-defaults
     git
     helm
     multiple-cursors
     syntax-checking
     treemacs
     tmux
     themes-megapack

     themes-megapack

     org
     ;; google-calendar

     markdown
     emacs-lisp
     yaml
     lua
     lsp
     scala-lsp
     (java :variables java-backend 'lsp)
     )

   dotspacemacs-additional-packages '()
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives nil
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'random
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-themes '(majapahit-dark
                         spacemacs-dark
                         spacemacs-light)
   dotspacemacs-mode-line-theme '(vim-powerline :separator wave :separator-scale 1.5)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-generate-layout-names nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location nil
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.3
   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-undecorated-at-startup nil
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers 'relative
   dotspacemacs-folding-method 'evil
   ;; TODO
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-icon-title-format nil
   dotspacemacs-whitespace-cleanup 'trailing
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env () (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  ;; (add-hook 'evil-insert-state-entry-hook (lambda () (send-string-to-terminal "\033[5 q")))
  ;; (add-hook 'evil-normal-state-entry-hook (lambda () (send-string-to-terminal "\033[0 q")))

  ;; (unless window-system
  ;;   (when (getenv "DISPLAY")
  ;;     (defun xclip-cut-function (text &optional push)
  ;;       (with-temp-buffer
  ;;         (insert text)
  ;;         (call-process-region (point-min) (point-max) "xclip" nil 0 nil "-i" "-selection" "clipboard")))
  ;;     (defun xclip-paste-function()
  ;;       (let ((xclip-output (shell-command-to-string "xclip -o -selection clipboard")))
  ;;         (unless (string= (car kill-ring) xclip-output)
  ;;           xclip-output )))

  ;;     (setq interprogram-cut-function 'xclip-cut-function)
  ;;     (setq interprogram-paste-function 'xclip-paste-function)
  ;;     ))

  ;; (defun on-after-init ()
  ;;   (unless (display-graphic-p (selected-frame))
  ;;     (set-face-background 'default "unspecified-bg" (selected-frame))))
  ;; (add-hook 'window-setup-hook 'on-after-init)
  (add-hook 'evil-insert-state-entry-hook (lambda () (send-string-to-terminal "\033[5 q")))
  (add-hook 'evil-normal-state-entry-hook (lambda () (send-string-to-terminal "\033[0 q")))
  (setq-default dotspacemacs-themes '(majapahit-dark
                                      spacemacs-dark
                                      spacemacs-light))
  )

(defun dotspacemacs/user-load ())

(defun dotspacemacs/user-config ()
  (setq asm-comment-char ?#)
  (setq x86-lookup-pdf "/Users/dickyarinal/Dropbox/Public/books/x86-64-instruction-set-ref.pdf")
  ;; (setq-default browse-url-browser-function 'browse-url-generic
  ;;               browse-url-generic-program "google-chrome-stable")

  (setq org-agenda-files (list "/Users/dickyarinal/Dropbox/Documents/orgs/TODO.org"))
  ;; (setq org-gcal-client-id "362941279662-pf44rj6oi26acrnf3goe6985a7k16vbl.apps.googleusercontent.com"
  ;;       org-gcal-client-secret "LetMs8T0NJtX7GvIGQnDEDD4")
  ;; (setq org-gcal-file-alist '(("dicky.arinal@gmail.com" . "/home/archinal/Dropbox/Documents/orgs/TODOist.org")))

  ;; (setq '(org-capture-templates
  ;;         ("t" "Todo" entry (file+headline "/home/archinal/Dropbox/Documents/orgs/TODO.org")
  ;;          "* TODO %?\n  %i\n  %a")))

  ;; (setq ensime-sem-high-enabled-p nil)
  ;; (setq gud-pdb-command-name "python -m pdb")
  ;; (setq-default browse-url-browser-function 'browse-url-generic
  ;;               browse-url-generic-program "chrome")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5a21604c4b1f2df98e67cda2347b8f42dc9ce471a48164fcb8d3d52c3a0d10be" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "54f2d1fcc9bcadedd50398697618f7c34aceb9966a6cbaa99829eb64c0c1f3ca" "88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2aa198")
     ("PROG" . "#268bd2")
     ("OKAY" . "#268bd2")
     ("DONT" . "#d70008")
     ("FAIL" . "#d70008")
     ("DONE" . "#00af00")
     ("NOTE" . "#875f00")
     ("KLUDGE" . "#875f00")
     ("HACK" . "#875f00")
     ("TEMP" . "#875f00")
     ("FIXME" . "#dc752f")
     ("XXX" . "#dc752f")
     ("XXXX" . "#dc752f")
     ("???" . "#dc752f"))))
 '(package-selected-packages
   (quote
    ())))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
