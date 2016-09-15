# pdfsmallnite

pdfsmallnite is a simple script that takes advantage of pdfunite and ghostscript to shrink pdf files and unite them all at once. This is particularly useful when you have scanned in a bunch of documents from a scanner and want them to be shrunk in size and combined together. Some printers will make large PDF files ranging from sizes of 10-20MB.

Dependencies:
1- ghostscript
2- pdfunite

I have found these to typically be preinstalled on the distrobutions I have used (Debian/Ubuntu/Fedora)

How to use:

Make the script executable:

  chmod +x pdfsmallnite.sh
  
Run the script:
  /path/to/pdfsmallnite.sh
  
You will be prompted to type the location of the PDFs. Currently, the script will only grab PDFs in one directory so make sure you have all the PDFs you wish to shrink and unite in the same directory!

Next, you will be given a list of the files in the directory you specified so you can see the names of the files you want to combine. Once the names are in, hit enter and the new pdf file will be placed in your present working directory.
