#!/usr/bin/env bash

if [[ $1 = "epub" ]]; then
	echo "Creating EPUB file"
	ebook-convert codelesscode.recipe .epub
elif [[ $1 = "mobi" ]]; then
	echo "Creating Mobi file"
	ebook-convert codelesscode.recipe .mobi
else
	echo "Creating EPUB and Mobi files"
	ebook-convert codelesscode.recipe .epub
	ebook-convert codelesscode.recipe .mobi
fi
