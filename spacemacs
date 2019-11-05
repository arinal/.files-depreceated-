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
     ;; google-calendar
     csv
     osx
     better-defaults
     git
     helm
     multiple-cursors
     syntax-checking
     treemacs
     tmux
     themes-megapack

     org
     javascript
     markdown
     emacs-lisp
     yaml
     lua
     lsp
     scala-lsp
     (java :variables java-backend 'lsp)
     python
     ruby
     go

     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence "jk"
                      auto-completion-complete-with-key-sequence-delay 0.1
                      )
     )
   )

  dotspacemacs-additional-packages '()
  dotspacemacs-frozen-packages '()
  dotspacemacs-excluded-packages '()
  dotspacemacs-install-packages 'used-only)

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
   ;; dotspacemacs-mode-line-theme '(all-the-icons :separator wave :separator-scale 1.5)
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
   dotspacemacs-pretty-docs nil
   ))

(defun dotspacemacs/user-env () (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  (add-hook 'evil-insert-state-entry-hook (lambda () (send-string-to-terminal "\033[5 q")))
  (add-hook 'evil-normal-state-entry-hook (lambda () (send-string-to-terminal "\033[0 q")))

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

  (doom-themes-treemacs-config)

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
    ("49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "5a21604c4b1f2df98e67cda2347b8f42dc9ce471a48164fcb8d3d52c3a0d10be" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "54f2d1fcc9bcadedd50398697618f7c34aceb9966a6cbaa99829eb64c0c1f3ca" "88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (csv-mode seeing-is-believing rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rbenv rake minitest enh-ruby-mode chruby bundler inf-ruby web-beautify tern prettier-js livid-mode skewer-mode js2-refactor multiple-cursors js2-mode js-doc import-js grizzl impatient-mode simple-httpd helm-gtags ggtags counsel-gtags add-node-modules-path yaml-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme kaolin-themes jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme espresso-theme dracula-theme doom-themes django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme noflet lsp-scala yasnippet-snippets ws-butler writeroom-mode winum volatile-highlights vi-tilde-fringe uuidgen unfill treemacs-projectile treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons smeargle reveal-in-osx-finder restart-emacs rainbow-delimiters popwin persp-mode password-generator paradox overseer osx-trash osx-dictionary osx-clipboard orgit org-projectile org-present org-pomodoro org-mime org-download org-cliplink org-bullets org-brain open-junk-file nameless mwim mvn move-text mmm-mode meghanada maven-test-mode markdown-toc magit-svn magit-gitflow macrostep lsp-ui lsp-treemacs lsp-java lorem-ipsum link-hint launchctl indent-guide hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-lsp helm-gitignore helm-git-grep helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag groovy-mode groovy-imports gradle-mode google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flycheck-pos-tip flycheck-package flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu ensime elisp-slime-nav editorconfig dumb-jump doom-modeline devdocs counsel-projectile company-statistics company-lsp company-emacs-eclim column-enforce-mode clean-aindent-mode centered-cursor-mode auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-link ace-jump-helm-line ac-ispell which-key use-package pcre2el font-lock+ dotenv-mode diminish))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
