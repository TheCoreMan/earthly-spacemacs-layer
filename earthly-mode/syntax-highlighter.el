;; earthly-mode

;; setq - set each symbol to value. vals are evaluated.
(setq earthly-highlights
      (let* (
            ;; define several category of keywords
             (x-keywords '("FROM" "COPY" "RUN" "LABEL" "EXPOSE" "VOLUME" "USER" "ENV" "ARG" "BUILD" "WORKDIR" "ENTRYPOINT" "CMD" "GIT CLONE" "DOCKER LOAD" "DOCKER PULL" "HEALTHCHECK" "WITH DOCKER" "IMPORT" "LOCALLY" "VERSION"))
            (x-types '("SAVE ARTIFACT" "SAVE IMAGE"))
            (x-constants '())
            (x-events '())
            (x-functions '("IF" "END" "ELSE" "ELSE IF" "DO" "COMMAND" "FOR"))

            ;; generate regex string for each category of keywords
            (x-keywords-regexp (regexp-opt x-keywords 'words))
            (x-types-regexp (regexp-opt x-types 'words))
            (x-constants-regexp (regexp-opt x-constants 'words))
            (x-events-regexp (regexp-opt x-events 'words))
            (x-functions-regexp (regexp-opt x-functions 'words)))

        `(
          (,x-types-regexp . font-lock-type-face)
          (,x-constants-regexp . font-lock-constant-face)
          (,x-events-regexp . font-lock-builtin-face)
          (,x-functions-regexp . font-lock-function-name-face)
          (,x-keywords-regexp . font-lock-keyword-face)
          ;; note: order above matters, because once colored, that part won't change.
          ;; in general, put longer words first
          )))

;;;###autoload
(define-derived-mode earthly-mode makefile-mode "Earthly mode"
  "Major mode for editing Earthfiles (see earthly.dev)…"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((earthly-highlights))))

;; add the mode to the `features' list
(provide 'earthly-mode)
