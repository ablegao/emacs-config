;;; Package --- Summary
;;; image+ configuration.
;;;
;;; Commentary:
;;; Copyright (c) 2016 Pierre Seimandi
;;; Under GPL License v3.0 and after.
;;;
;;; Time-stamp: <2017-09-09 16:14:48 seimandp>
;;;
;;; Code:
;;; ————————————————————————————————————————————————————————

(req-package image+
  :defer t
  :after image
  :require image

  :bind
  (:map image-mode-map
        ("+"   . imagex-sticky-zoom-in)
        ("-"   . imagex-sticky-zoom-out)
        ("r"   . imagex-sticky-rotate-right)
        ("l"   . imagex-sticky-rotate-left)
        ("m"   . imagex-sticky-maximize)
        ("o"   . imagex-sticky-restore-original)
        ("w"   . image-transform-fit-to-width)
        ("h"   . image-transform-fit-to-height)
        ("s"   . imagex-sticky-save-image)
        ("p"   . image-previous-file)
        ("n"   . image-next-file))

  :config
  (imagex-auto-adjust-mode))

;; ——

(req-package hydra
  :defer t
  :after image
  :require (image image+)

  :bind
  (:map image-mode-map
        ("C-o" . my/hydra-image+/body))

  :config
  (defhydra my/hydra-image+ (:color pink :hint nil)
    "
Image+

[_+_] zoom in        [_m_] maximize            [_s_] save image            [_q_] quit
[_-_] zoom out       [_o_] restore original    [_p_] previous-file
[_l_] rotate left    [_w_] fit to width        [_n_] next-file
[_r_] rotate right   [_h_] fit to height
    "
    ("<escape>" nil :exit t)
    ("q"        nil :exit t)
    ("C-o"      nil :exit t)
    ("C-g"      nil :exit t)

    ("+" imagex-sticky-zoom-in)
    ("-" imagex-sticky-zoom-out)
    ("r" imagex-sticky-rotate-right)
    ("l" imagex-sticky-rotate-left)
    ("m" imagex-sticky-maximize)
    ("o" imagex-sticky-restore-original)
    ("w" image-transform-fit-to-width)
    ("h" image-transform-fit-to-height)
    ("s" imagex-sticky-save-image)
    ("p" image-previous-file)
    ("n" image-next-file)))

;; ——

(provide 'cfg-image+)

;;; ————————————————————————————————————————————————————————
;;; cfg-image+.el ends here
