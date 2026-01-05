uname=$(shell uname)
ifeq ($(shell uname),Darwin)
  WATCHCMD=fswatch -1 .
else
  WATCHCMD=inotifywait -qre close_write .;
endif

CONTAINER_IMAGE=$(shell $(DOCKER_CLI) images -q jake-template-builder)
DOCKER_CLI ?= docker

# Default target
resume: resume.tex build-image
	$(DOCKER_CLI) run --rm -v ./:/mnt jake-template-builder pdflatex /mnt/resume.tex --output-directory=/mnt

watch:
	while true; do \
        OPTS=-interaction=nonstopmode make resume; \
        sleep 1; \
        $(WATCHCMD); \
    done

.PHONY: build-image
build-image:
	if [[ -z "$(CONTAINER_IMAGE)" ]]; then \
		$(DOCKER_CLI) -t jake-template-builder build .; \
	fi

clean:
	rm resume.{pdf,out,log,aux}

