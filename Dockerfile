FROM squidfunk/mkdocs-material

RUN pip install mkdocs-git-revision-date-localized-plugin
RUN pip install mkdocs-awesome-pages-plugin
RUN pip install pymdown-extensions
