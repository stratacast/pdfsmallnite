#!/bin/bash

echo "When selecting pdfs, be sure to type the FULL NAME."
echo "Example: to combine file_a.pdf and file_b.pdf be sure to answer ->"
echo '"file_a.pdf file_b.pd" - but without the quotation marks'
echo ""

current_dir=`pwd`
user_home=`eval echo ~$USER`

echo "Where are your PDFs located? Type the full path: "
read pdf_location


if [[ ${pdf_location:0:1} == "~" ]];
   then pdf_location=`eval echo ~$USER`/${pdf_location:2:100}
fi

ls $pdf_location

echo "Which files do you want to comebine: "
read filenames

echo "What will the new name of your pdf be: "
read finalpdf

cd $pdf_location

pdfunite $filenames $finalpdf.pdf
pdf2ps $finalpdf.pdf $finalpdf.ps
ps2pdf $finalpdf.ps newpdf.pdf
rm $finalpdf.ps $finalpdf.pdf
mv newpdf.pdf $current_dir/$finalpdf.pdf

