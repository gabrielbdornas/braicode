---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/sxfTJYZ.png
---

# How to convert PDF to image in Ubuntu

Recently I have to convert some PDF document pages to images to render them in [Markdown](https://code.braico.me/blog/2022-09-29-markdown-tutorial.html) image sintaxe.
The [pdftoppm](https://linux.die.net/man/1/pdftoppm) was the selected command-line tool for the job to convert my PDFs into separate image files. 
With `pdftoppm`, we can specify things like page range, output format, resolution, scale, and others.

To use the `pdftoppm` command-line tool, you need to first install it with `sudo apt install poppler-utils` on Ubuntu.
Below some simple `pdftoppm` usage examples.
Type `pdftoppm --help` to read all available options.

## Convert PDF Document to Image

The syntax for converting an entire PDF is as follows:

```
# Sintaxe
pdftoppm -<image_format> <pdf_filename> <image_name>

# Example
pdftoppm -png my_document.pdf my_image
```

In the example above each page of the PDF will be converted to PNG as `my_image-1.png`, `my_image-2.png`, etc.

## Convert Range of PDF Pages to Images

The syntax for specifying range is as follows:

```
# Sintaxe
pdftoppm -<image_format> -f N -l N <pdf_filename> <image_name>

# Example
pdftoppm -png -f 10 -l 15 my_document.pdf my_image
```

In this case, `-f` specifies the first-page number to covert, `-l` for the last and `N`, to both cases, de page number.
In this example the pages 10 to 15 will be converted.

## Adjust DPI Quality to Conversion

Our CLI converts PDF pages to images with a [DPI](https://en.wikipedia.org/wiki/Dots_per_inch) of 150 by default. 
To adjust, use the `-rx` number which specifies the `X` resolution, and `-ry` the number which specifies the `Y` resolution:

```
pdftoppm -png -rx 300 -ry 300 my_document.pdf my_image
```
In the example above, we adjust the DPI quality of my_document.pdf to 300.

## Automate the job with make

If you have an big number of PDF documents to convert, consider create an `make` target to automate the process.
Your [Makefiles](https://www.gnu.org/software/make/) could looks like:

```
PDFS= $(wildcard pdfs/*.pdf)
IMAGES= $(patsubst pdfs/%.pdf, images/%.png, $(PDFS))

convert: $(IMAGES)

$(IMAGES): images/%.png: pdfs/*.pdf
  pdftoppm -png $< $@
```

In this situation all your PDFs located in the `pdfs` folder will be converted to `png` images into `images` folder with `make convert` command.
Hopefully, you can now convert your PDF pages to images on Ubuntu using the `pdftoppm` command-line tool and why not automate your process with Makefiles!

## References
