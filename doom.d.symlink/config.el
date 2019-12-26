;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Elliott Pogue"
      user-mail-address "epogue@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; test
(setq doom-font (font-spec :family "SF Mono" :size 14)
      doom-variable-pitch-font (font-spec :family "Avenir Next" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)

;; Increase line height
(setq-default line-spacing 5)

;; Window size
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Projectile
(setq projectile-project-search-path '("~/Projects"))

;; Elixir
(setq lsp-clients-elixir-server-executable "elixir-ls")

;; Wakatime config
(use-package! wakatime-mode
  :init
  (setq wakatime-api-key "0cbec2ee-baf8-4c4f-8622-c545bdc0d359"
        wakatime-cli-path "/usr/local/bin/wakatime")
  :config
  (global-wakatime-mode +1))

;; Custom keybinds
(map! :leader
      :desc "Find file using FZF" "SPC" #'counsel-fzf)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
