
all: presentation.html

presentation.html: \
presentation.md
	bash md2reveal.sh presentation
