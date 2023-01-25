build:
	sudo docker build -t squidfunk/mkdocs-material .

dev:
	sudo docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
