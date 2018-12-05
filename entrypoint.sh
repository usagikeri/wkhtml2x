#!/bin/bash

case $1 in
        "image" ) wkhtmltoimage ${@:2};;
        "pdf" ) wkhtmltopdf ${@:2};;
        *) echo "Error: Argument is missing. Please specify pdf or image.\n\
Usage:
\$docker run -rm -v \$(PWD):/data/ usagikeri/wkhtml2x [image|pdf] URL FILENAME\n\
        image: wkhtmltoimage\n\
        pdf: wkhtmltopdf";;
esac
