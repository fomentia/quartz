;;; quartz.el --- A collection of functions for ease of programming in Crystal Lang
;; Package-Version: 0.01

;; Copyright (C) 2016 Isaac Williams <isaac@thewilliams.ws>

;;;###autoload
(defun quartz:run-buffer ()
  (interactive)
  (with-output-to-temp-buffer "*crystal*"
    (start-process-shell-command "crystal-process" "*crystal*" (format "crystal %s" (expand-file-name (buffer-file-name))))))

(defun quartz:run-file (filename)
  (interactive "Fcrystal: ")
  (when (not (file-exists-p filename))
    (error "The file doesn't exist"))
  (with-output-to-temp-buffer "*crystal*"
    (start-process-shell-command "crystal-process" "*crystal*" (format "crystal %s" (expand-file-name filename)))))

(provide 'quartz)
;;; quartz.el ends here
