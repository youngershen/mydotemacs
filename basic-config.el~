;;设置读取写入文件的格式
(setq default-buffer-file-coding-system ' utf-8)
(prefer-coding-system  'utf-8)
;;设置字体
(set-default-font "Bitstream Charter-10")
;;显示行号
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;;设置色调主题
(require 'color-theme)
(color-theme-initialize)
(color-theme-matrix)
(setq version-control t) 
;;备份最原始的版本两次，记第一次编辑前的文档，和第二次编辑前的文档 
(setq kept-old-versions 2) 
;;备份最新的版本五次，理解同上 
(setq kept-new-versions 5) 
;;删掉不属于以上7中版本的版本 
(setq delete-old-versions t) 
;;设置备份文件的路径 
(setq backup-directory-alist '(("." . "~/.emacs.tmp"))) 
;;备份设置方法，直接拷贝 
(setq backup-by-copying t) 
;;auto complete
(global-set-key [(meta ?/)] 'hippie-expand) 
(setq hippie-expand-try-functions-list 
'(try-expand-line 
try-expand-line-all-buffers 
try-expand-list 
try-expand-list-all-buffers 
try-expand-dabbrev 
try-expand-dabbrev-visible 
try-expand-dabbrev-all-buffers 
try-expand-dabbrev-from-kill 
try-complete-file-name 
try-complete-file-name-partially 
try-complete-lisp-symbol 
try-complete-lisp-symbol-partially 
try-expand-whole-kill)) 
;;time stamps
(setq time-stamp-active t) 
(setq time-stamp-warn-inactive t) 
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")  
(add-hook 'write-file-hooks 'time-stamp) 
(minibuffer-electric-default-mode 1) 
;;启用部分补全功能，如输入M-x q r r相当于M-x query-replace-regexp 
(partial-completion-mode 1) 
;;在minibuffer里启用自动补全函数和变量 
(icomplete-mode 1) 
;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母 
(fset 'yes-or-no-p 'y-or-n-p) 
;;允许minibuffer自由变化其大小（指宽度） 
(setq resize-mini-windows t) 
;;当寻找一个同名的文件，自动关联上那个文件？ 
(setq uniquify-buffer-name-style 'forward) 
;;在emacs读man文档时，使用当前buffer 
(setq Man-notify-method 'pushy) 
;;鼠标自动避开指针，如当你输入的时候，指针到了鼠标的位置，鼠标有点挡住视线了 
(mouse-avoidance-mode 'animate) 
;;允许自动打开图片，如wiki里面 
(auto-image-file-mode) 
;;可以操作压缩文档 
(auto-compression-mode 1) 
;;在minibuffer上面可以显示列号 
(column-number-mode t) 
;;显示默认的文档的宽度，看起来比较舒服？ 
(setq default-fill-column 60) 
;;指针不要闪，我得眼睛花了 
(blink-cursor-mode -1) 
(transient-mark-mode 1) 
;;当指针到一个括号时，自动显示所匹配的另一个括号 
(show-paren-mode 1) 
;;是用滚轴鼠标 
(mouse-wheel-mode t) 
;;去掉烦人的警告铃声 
(setq visible-bell nil) 
;;滚动页面时比较舒服，不要整页的滚动 
(setq scroll-step 1 
scroll-margin 3 
scroll-conservatively 10000) 
;;设定句子结尾，主要是针对中文设置 
(setq sentence-end "\\([¡££¡£¿]\\|¡¡\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*") 
(setq sentence-end-double-space nil) 
;;去掉Emacs和gnus启动时的引导界面 
(setq inhibit-startup-message t) 
(setq gnus-inhibit-startup-message t) 
;;当指针移到另一行，不要新增这一行？d 
(setq next-line-add-newlines nil) 
;;在文档最后自动插入空白一行，好像某些系统配置文件是需要这样的 
(setq require-final-newline t) 
(setq track-eol t) 
;;使用C-k删掉指针到改行末的所有东西 
(setq-default kill-whole-line t) 
;;设定删除保存记录为200，可以方便以后无限恢复 
(setq kill-ring-max 200) 
;;增大使用查找函数和变量的寻找范围 
(setq apropos-do-all t) 
;;是用aspell程序作为Emacs的拼写检查成学 
(setq-default ispell-program-name "aspell") 
;;使用narrow功能时的一个设置 
(put 'narrow-to-region 'disabled nil) 
;;启动Emacs自动设置为两个窗口(上下各一个) 
(split-window-vertically) 
;;改变emacs标题栏的标题 
(setq frame-title-format "%b@vj.org") 
;;允许emacs和外部其他程序的粘贴 
(setq x-select-enable-clipboard t) 
;;自动补全
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") 
(define-key ac-completing-map "\M-n" 'ac-next)  
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-q") 'auto-complete)
;;设置snippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")
;;设置pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;设置ropemacs
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
;;pdb调试设置
(setq pdb-path '/usr/bin/pdb
       gud-pdb-command-name (symbol-name pdb-path))
 (defadvice pdb (before gud-query-cmdline activate)
   "Provide a better default command line when called interactively."
   (interactive
    (list (gud-query-cmdline pdb-path
                 (file-name-nondirectory buffer-file-name)))))
;;nav插件设置
(require 'nav)
(nav-disable-overeager-window-splitting)
(global-set-key [f8] 'nav-toggle)
