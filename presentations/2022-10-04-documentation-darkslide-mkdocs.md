# Documentação Inteligente

---

# Overview

- Nunca mais encaminhe um documento de texto ou apresentação via email.

- Substitua ferramentas pagas, complexas e pesadas por outras modernas e que **sempre** serão gratúitas.

- Se sobressaia mostrando novas habilidades nunca antes imaginadas.

---

# Agenda

- Utilizando da ferramenta [Darkslide](https://github.com/ionelmc/python-darkslide).

- Utilizando da Ferramenta [MkDocs](https://www.mkdocs.org/).

- Disponibilizando seus documentos online.

- Bonus.

---

# Darkslide

- Lightweight markup language (Markdown, ReST, or Textile) slideshow generator.

- Teclas de atalho e [Live Demo](http://ionelmc.github.io/python-darkslide/).

- [Revisão Markdown](https://code.braico.me/blog/2022-09-29-markdown-tutorial.html):
    - Cabeçalho: #
    - Negrito: **
    - Itálico: *
    - Citação: >
    - Lista ordenada: - 1.
    - Lista não ordenada: - Item
    - Código: ``

---

# Darkslide

- Revisão Markdown:
    - Citação []:
    - Links: `[]()`
    - Imagens[¹]: `![]()`

- Revisão Markdown Extendido:
    - Tabelas[²]: |---------|---------|
    - Lista de Tarefas: - [ ]
    - Bloco de Código: ```
    - Emoji: :snake:
    - Tachado: ~~tachado~~
    - Realçado: ==realçado== 

[¹]: https://imgur.com
[²]: https://packagecontrol.io/packages/Table%20Editor

---

# Darkslide

### Instalação:
    
    !Shell
      pip install darkslide

### Formatação:
    
    !Markdown
    # First Slide

    First Slide text

    ---

    # First Slide

    First Slide text

- To create a title slide, render a single h1 element (eg. # My Title)
- Separate your slides using --- (except at the end of md files).
- Your other slides should have a heading that renders to an h1 element.

---

# Darkslide

### Rendering:

    !Shell
      darkslide --help

      darkslide slides.md

Enjoy your newly generated presentation.html

---

# Darkslide

### Publishing your Presentation

Use [Python Project Template](https://github.com/gabrielbdornas/python-project-template)

Use [Makefile](https://www.gnu.org/software/make/manual/make.html)

    !Makefile
    .PHONY: build-presentation

    PRESENTATIONS_MD_FILES= $(wildcard presentations/*.md)
    PRESENTATIONS_HTML_FILES= $(patsubst presentations/%.md, presentations/%.html, $(PRESENTATIONS_MD_FILES))

    build-presentations: $(PRESENTATIONS_HTML_FILES) ## Build html presentations files

    $(PRESENTATIONS_HTML_FILES): presentations/%.html : presentations/%.md livemark.yaml
        @echo 'Building presentations/$*.html file from presentations/$*.md...'
        @darkslide $< -d $@ --embed

---

# MkDocs