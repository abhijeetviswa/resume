# Default target
resume: resume.tex resume.cls
	xelatex resume.tex

watch: 
	while true; do \
        make resume; \
        inotifywait -qre close_write .; \
    done

clean:
	rm resume.{pdf,out,log,aux}

