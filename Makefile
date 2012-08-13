#build .pdf files from .tex source files.

SPANISH_DIR=./build/spanish
SPANISH_SOURCE=martinez-zea.tex
ENGLISH_DIR=./build/english
ENGLISH_SOURCE=martinez-zea-eng.tex

spanish:
	@echo "Building !mz cv (spanish)"
	mkdir -p build/spanish
	pdflatex  -output-directory=${SPANISH_DIR} ${SPANISH_SOURCE}
	@echo "Done :) "

english:
	echo "Building !mz cv (english) \n"
	mkdir -p build/english
	pdflatex -output-directory=${ENGLISH_DIR} ${ENGLISH_SOURCE}
	echo "Done :) \n"

clean:
	@echo "Cleaning building workspace "
	rm -rf ./build
	@echo "Done :) "
	

