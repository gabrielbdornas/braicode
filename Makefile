.PHONY: help build build-pages build-blog clean-blog-index build-presentations clean start

PAGES_MD_FILES= $(wildcard pages/*.md)
PAGES_HTML_FILES= $(patsubst pages/%.md, pages/%.html, $(PAGES_MD_FILES))
BLOG_MD_FILES= $(wildcard blog/*.md)
BLOG_HTML_FILES= $(patsubst blog/%.md, blog/%.html, $(BLOG_MD_FILES))
PRESENTATIONS_MD_FILES= $(wildcard presentations/*.md)
PRESENTATIONS_HTML_FILES= $(patsubst presentations/%.md, presentations/%.html, $(PRESENTATIONS_MD_FILES))

help: ## Short description of the commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

build: clean index.html build-pages clean-blog-index build-blog build-presentations

index.html: index.md livemark.yaml ## Build index.html file
	@echo 'Building index.html file from index.md...'
	@livemark build $< --target $@ --config livemark.yaml

build-pages: $(PAGES_HTML_FILES) ## Build html page files

$(PAGES_HTML_FILES): pages/%.html : pages/%.md livemark.yaml
	@echo 'Building pages/$*.html file from pages/$*.md...'
	@livemark build $< --target $@ --config livemark.yaml

build-blog: $(BLOG_HTML_FILES) ## Build html blog files

$(BLOG_HTML_FILES): blog/%.html : blog/%.md livemark.yaml
	@echo 'Building blog/$*.html file from blog/$*.md...'
	@livemark build $< --target $@ --config livemark.yaml

build-presentations: $(PRESENTATIONS_HTML_FILES) ## Build html presentations files

$(PRESENTATIONS_HTML_FILES): presentations/%.html : presentations/%.md livemark.yaml
	@echo 'Building presentations/$*.html file from presentations/$*.md...'
	@livemark build $< --target $@ --config livemark.yaml
	@darkslide $< -d $@ --embed

clean-blog-index: ## Clean blog/index.html page
	@echo 'Cleaning blog/index.html page'
	@rm -rf blog/index.html

clean: ## Clean html pages
	@echo 'Cleaning html pages'
	@rm -rf *.html
	@rm -rf pages/*.html
	@rm -rf blog/*.html
	@rm -rf presentations/*.html

start: ## Start livemark server
	@livemark start --config livemark.yaml
	