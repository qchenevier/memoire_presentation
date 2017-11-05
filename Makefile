
all: presentation.html

presentation.html: \
presentation.md
	bash md2impress.sh presentation
