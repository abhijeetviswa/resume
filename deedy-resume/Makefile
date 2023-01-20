# Default target
resume: resume.tex resume.cls
	xelatex $(OPTS) resume.tex

watch:
	while true; do \
        OPTS=-interaction=nonstopmode make resume; \
        inotifywait -qre close_write .; \
    done

clean:
	rm resume.{pdf,out,log,aux}

