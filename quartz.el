;;; quartz.el --- A collection of functions for ease of programming in Crystal Lang
;; Package-Version: 0.01

;; Copyright (C) 2016 Isaac Williams <isaac@thewilliams.ws>

(defmacro start-process-with-output-to-temp-buffer (buffer-name file-name)
  `(with-output-to-temp-buffer ,buffer-name
     (start-process-shell-command "crystal" ,buffer-name (format "crystal %s" (expand-file-name ,file-name)))))

;;;###autoload
(defun quartz:run-buffer ()
  (interactive)
  (start-process-with-output-to-temp-buffer "*crystal*" (buffer-file-name)))

(defun quartz:run-file (filename)
  (interactive "Fcrystal: ")
  (when (not (file-exists-p filename))
    (error "The file doesn't exist"))
  (start-process-with-output-to-temp-buffer "*crystal*" filename))

(provide 'quartz)
;;; quartz.el ends here
