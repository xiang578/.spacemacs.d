(setq org-mobile-directory "~/org/mobileorg/")
(setq org-mobile-files (list "~/org/gtd.org"
                             "~/org/notes.org"
                             ))
(setq org-directory "~/org")
(setq org-mobile-inbox-for-pull "~/org/notes.org")
(setq org-agenda-files (list "~/org/notes.org"
                             "~/org/gtd.org"))

;;org-mode 自动换行
;;参考https://www.zhihu.com/question/50377885
(global-visual-line-mode 1)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/org/gtd.org" "Inbox")
                               "* TODO %i %?\n %t\n %a")
                              ("n" "notes" entry
                               (file+headline "~/org/notes.org" "notes")
                               "* %?\n %i\n %U")))

(setq org-todo-keywords
  '((sequence "TODO(t)" "NEXT(n)" "SOMEDAY(s)" "WAITING(w@/!)" "|" "DONE(d@/!)" "CANCELLED(c@/!)")))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "orange" )
              ("NEXT" :foreground "blue" )
              ("WAITING" :foreground "red" )
              ("SOMEDAY" :foreground "magenta" )
              ("CANCELLED" :foreground "yellow" ))))
(setq redisplay-dont-pause nil)

(global-set-key [f8] 'neotree-toggle)

;;(nyan-mode t)
