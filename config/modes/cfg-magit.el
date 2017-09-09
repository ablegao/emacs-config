;;; Package --- Summary
;;; magit configuration.
;;;
;;; Commentary:
;;; Copyright (c) 2016 Pierre Seimandi
;;; Under GPL License v3.0 and after.
;;;
;;; Time-stamp: <2017-09-09 19:00:33 seimandp>
;;;
;;; Code:
;;; ————————————————————————————————————————————————————————

(use-package magit
  :defer t
  :bind
  (("C-x g" . magit-status))
  :config
  (setq magit-item-highlight-face 'bold))

;; ——

(req-package ivy
  :defer t
  :after magit
  :require magit

  :config
  (setq magit-completing-read-function 'ivy-completing-read))

;; ——

(use-package diff-hl
  :after magit

  :config
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

;; ——

(provide 'cfg-magit)

;;; ————————————————————————————————————————————————————————
;;; cfg-magit.el ends here
