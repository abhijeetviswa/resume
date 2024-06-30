uname=$(shell uname)
ifeq ($(shell uname),Darwin)
  WATCHCMD=fswatch -1 .
else
  WATCHCMD=inotifywait -qre close_write .;
endif

# Default target
resume: resume.tex
	pdflatex $(OPTS) resume.tex < /dev/null

watch:
	while true; do \
        OPTS=-interaction=nonstopmode make resume; \
        sleep 1; \
        $(WATCHCMD); \
    done

clean:
	rm resume.{pdf,out,log,aux}

