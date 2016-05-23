;;; quartz.el --- A collection of functions for ease of programming in Crystal Lang
;; Package-Version: 0.01

;; Copyright (C) 2016 Isaac Williams <isaac@thewilliams.ws>

;;;###autoload
(defun quartz:run-buffer ()
  (interactive)
  (let ((command (format "crystal %s" (expand-file-name (buffer-file-name)))))
    (with-output-to-temp-buffer "*crystal*"
      (start-process-shell-command "crystal-process" "*crystal*" command))))

(provide 'quartz)
;;; quartz.el ends here
