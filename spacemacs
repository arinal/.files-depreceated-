;; -*- mode: emacs-lisp; lexical-binding: t -*-

(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(rust
     go
     html
     ;; spell-checking
     ;; version-control
     ;; osx
     auto-completion
     better-defaults
     git
     helm
     multiple-cursors
     syntax-checking
     treemacs
     tmux
     themes-megapack

     org
     google-calendar
     yaml
     markdown
     emacs-lisp
     lsp
     scala-lsp
     (java :variables java-backend 'lsp)
     )

   dotspacemacs-additional-packages '()
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
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
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; dotspacemacs-mode-line-theme '(vim-powerline :separator wave :separator-scale 1.5)
   dotspacemacs-mode-line-theme '(all-the-icons :separator wave :separator-scale 10.0)
   ;; dotspacemacs-mode-line-theme '(doom)
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
   ;; dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.3
   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-undecorated-at-startup nil
   ;; dotspacemacs-active-transparency 90
   ;; dotspacemacs-inactive-transparency 90
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
  (add-hook 'evil-insert-state-entry-hook (lambda () (send-string-to-terminal "\033[5 q")))
  (add-hook 'evil-normal-state-entry-hook (lambda () (send-string-to-terminal "\033[0 q")))

  (unless window-system
    (when (getenv "DISPLAY")
      (defun xclip-cut-function (text &optional push)
        (with-temp-buffer
          (insert text)
          (call-process-region (point-min) (point-max) "xclip" nil 0 nil "-i" "-selection" "clipboard")))
      (defun xclip-paste-function()
        (let ((xclip-output (shell-command-to-string "xclip -o -selection clipboard")))
          (unless (string= (car kill-ring) xclip-output)
            xclip-output )))

      (setq interprogram-cut-function 'xclip-cut-function)
      (setq interprogram-paste-function 'xclip-paste-function)
      ))

  (setq-default dotspacemacs-themes '(majapahit-dark
                                      spacemacs-dark
                                      spacemacs-light))
  )

(defun dotspacemacs/user-load ())

(defun dotspacemacs/user-config ()
  (setq asm-comment-char ?#)
  (setq x86-lookup-pdf "/Users/dickyarinal/Dropbox/Public/books/x86-64-instruction-set-ref.pdf")
  (setq-default browse-url-browser-function 'browse-url-generic
                browse-url-generic-program "google-chrome-stable")

  ;; (setq org-agenda-files (list "/home/archinal/Dropbox/Documents/orgs/TODO.org"))
  ;; (setq org-gcal-client-id "362941279662-pf44rj6oi26acrnf3goe6985a7k16vbl.apps.googleusercontent.com"
  ;;       org-gcal-client-secret "LetMs8T0NJtX7GvIGQnDEDD4")
  ;; (setq org-gcal-file-alist '(("dicky.arinal@gmail.com" . "/home/archinal/Dropbox/Documents/orgs/TODOist.org")))

  ;; (setq '(org-capture-templates
  ;;         ("t" "Todo" entry (file+headline "/home/archinal/Dropbox/Documents/orgs/TODO.org")
  ;;          "* TODO %?\n  %i\n  %a")))
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
    ("5a21604c4b1f2df98e67cda2347b8f42dc9ce471a48164fcb8d3d52c3a0d10be" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" default)))
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
     ("XXXX" . "#dc752f"))))
 '(package-selected-packages
   (quote
    (toml-mode racer flycheck-rust cargo rust-mode helm-gtags godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc ggtags flycheck-gometalinter flycheck-golangci-lint counsel-gtags company-go go-mode web-mode web-beautify tagedit slim-mode scss-mode sass-mode pug-mode prettier-js impatient-mode simple-httpd helm-css-scss haml-mode emmet-mode counsel-css company-web web-completion-data add-node-modules-path yaml-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme kaolin-themes jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme espresso-theme dracula-theme doom-themes django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme calfw-org org-gcal request-deferred deferred calfw mvn meghanada maven-test-mode lsp-java groovy-mode groovy-imports pcache gradle-mode ensime company-emacs-eclim eclim scala-mode noflet lsp-scala sbt-mode lsp-ui lsp-treemacs helm-lsp company-lsp lsp-mode dash-functional smeargle orgit magit-svn magit-gitflow magit-popup helm-gitignore helm-git-grep gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit transient git-commit with-editor yasnippet-snippets unfill org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download org-cliplink org-brain mwim mmm-mode markdown-toc markdown-mode htmlize helm-org-rifle helm-company helm-c-yasnippet gnuplot gh-md fuzzy flycheck-pos-tip pos-tip evil-org company-statistics company auto-yasnippet yasnippet ac-ispell auto-complete ws-butler writeroom-mode visual-fill-column winum volatile-highlights vi-tilde-fringe uuidgen treemacs-projectile treemacs-evil treemacs ht pfuture toc-org symon symbol-overlay string-inflection spaceline-all-the-icons spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode password-generator paradox spinner overseer org-bullets open-junk-file nameless move-text macrostep lorem-ipsum link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-xref helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flycheck-package package-lint flycheck flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state iedit evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens smartparens paredit evil-args evil-anzu anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump doom-modeline shrink-path all-the-icons memoize f dash s devdocs define-word counsel-projectile projectile counsel swiper ivy pkg-info epl column-enforce-mode clean-aindent-mode centered-cursor-mode auto-highlight-symbol auto-compile packed aggressive-indent ace-window ace-link ace-jump-helm-line helm avy helm-core popup which-key use-package pcre2el org-plus-contrib hydra lv font-lock+ evil goto-chg undo-tree dotenv-mode diminish bind-map bind-key async)))
 '(pdf-view-midnight-colors (quote ("#5f5f87" . "#ffffff"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
