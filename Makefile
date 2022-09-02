.PHONY: help build build-pages build-blog clean start

PAGES_MD_FILES= $(wildcard pages/*.md)
PAGES_HTML_FILES= $(patsubst pages/%.md, pages/%.html, $(PAGES_MD_FILES))
BLOG_MD_FILES= $(wildcard blog/*.md)
BLOG_HTML_FILES= $(patsubst blog/%.md, blog/%.html, $(BLOG_MD_FILES))

help: ## Short description of the commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: clean index.html build-pages build-blog

index.html: index.md ## Build index.html file
	@echo 'Building index.html file from index.md...'
	@livemark build $< --target $@ --config livemark.yaml

build-pages: $(PAGES_HTML_FILES) ## Build html page files

$(PAGES_HTML_FILES): pages/%.html : pages/%.md index.md livemark.yaml
	@echo 'Building pages/$*.html file from pages/$*.md...'
	@livemark build $< --target $@ --config livemark.yaml

build-blog: $(BLOG_HTML_FILES) ## Build html blog files

$(BLOG_HTML_FILES): blog/%.html : blog/%.md index.md livemark.yaml
	@echo 'Building blog/$*.html file from blog/$*.md...'
	@livemark build $< --target $@ --config livemark.yaml

clean: ## Clean html pages
	@echo 'Cleaning html pages'
	@rm -rf *.html
	@rm -rf pages/*.html
	@rm -rf blog/*.html

start: ## Start livemark server
	@livemark start --config livemark.yaml