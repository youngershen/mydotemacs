:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;;; younger shen's dotemacs file 
;;; do it different.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(tool-bar-mode -1);隐藏工具栏
(menu-bar-mode -1);隐藏标题栏

;;设置全局用户信息
(setq user-full-name "younger.shen")
(setq user-mail-address "younger.x.shen@gmail.com")
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")

;;设置启动初始化信息
;;(setq default-frame-alist '((height . 35)(width . 100)))

;;设置slime和lisp implementation的位置
(setq inferior-lisp-program "/usr/bin/clisp")  
(add-to-list 'load-path "~/sources/slime")  
(require 'slime)  
(slime-setup '(slime-fancy)) 

;;添加加载路径
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0/")
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-nav-49/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c/")
;;加载配置文件
(load "basic-config")
(load "ido")
(load "tabbar")
(load "ido-conf")
(load "nav")
(load "yasnippet")
(load "pymacs")
