#!/bin/bash

if [[ $PWD == *"/node_modules/coffeekraken-gridle/scripts"* ]]
then
	cd ../
fi

if [[ $PWD == *"/node_modules/coffeekraken-gridle"* ]]
then
	# move src
	mv dist/js/ js/
	mv src/sass/ sass/

	# clean repo
	rm -rf src
	rm -rf *.html
	rm -rf *.php
	rm -rf .sass-cache
	rm -rf favicon.ico
	rm -rf .DS_Store
	rm -rf scripts

	# update _index.scss file import reference
	echo '@import "sass/gridle";' > _index.scss
fi
