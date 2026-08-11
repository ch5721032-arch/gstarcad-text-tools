;; text-replace.lsp - Batch find & replace text across the whole drawing
;; Load: APPLOAD -> text-replace.lsp
;; Run: TREPLACE
;; Compatible with GstarCAD 2024-2026, AutoCAD 2021-2026

(defun c:TREPLACE (/ old new ss i ent entData)
  (setq old (getstring T "\nFind text: ")
        new (getstring T "\nReplace with: ")
        ss (ssget "X" '((0 . "TEXT,MTEXT")))
        i 0)
  (if ss
    (progn
      (while (< i (sslength ss))
        (setq ent (ssname ss i)
              entData (entget ent))
        (entmod (subst (cons 1 (vl-string-subst new old (cdr (assoc 1 entData))))
                       (assoc 1 entData) entData))
        (setq i (1+ i)))
      (princ "\nText replaced."))))