uname=$(shell uname)
ifeq ($(shell uname),Darwin)
  WATCHCMD=fswatch -1 .
else
  WATCHCMD=inotifywait -qre close_write .;
endif

# Default target
resume: resume.tex resume.cls
	pdflatex $(OPTS) resume.tex

watch:
	while true; do \
        OPTS=-interaction=nonstopmode make resume; \
        $(WATCHCMD); \
    done

clean:
	rm resume.{pdf,out,log,aux}

