;;; Package --- Summary
;;; popwin configuration.
;;;
;;; Commentary:
;;; Copyright (c) 2016 Pierre Seimandi
;;; Under GPL License v3.0 and after.
;;;
;;; Time-stamp: <2017-09-09 15:54:59 seimandp>
;;;
;;; Code:
;;; ————————————————————————————————————————————————————————

;; Manage some buffer as popups (less invasive frames)
(use-package popwin
  :defer t
  :commands (popwin-mode)
  :init
  (setq popwin:popup-window-height 20)
  :config
  (popwin-mode 1))

(provide 'cfg-popwin)

;;; ————————————————————————————————————————————————————————
;;; cfg-popwin.el ends here
