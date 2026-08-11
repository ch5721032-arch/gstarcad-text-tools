;; text-export.lsp - Export selected text/MText to CSV file
;; Load: APPLOAD -> text-export.lsp
;; Run: TEXPORT
;; Compatible with GstarCAD 2024-2026, AutoCAD 2021-2026

(defun c:TEXPORT (/ ss i ent entData file)
  (setq ss (ssget '((0 . "TEXT,MTEXT")))
        i 0
        file (open (getfiled "Save text list" "textlist" "csv" 1) "w"))
  (if file
    (progn
      (while (< i (sslength ss))
        (setq ent (ssname ss i)
              entData (entget ent))
        (if (assoc 1 entData)
          (write-line (cdr (assoc 1 entData)) file))
        (setq i (1+ i)))
      (close file)
      (princ "\nText exported to CSV."))))