# Build jekyll site and create pdf of resume

# Store printed CV file here
OUTFILE="$PWD/JHGINN_CV.pdf"

# Convert cv html to pdf
# - Viewport sets the 'size' of the screen that is visiting the website
wkhtmltopdf --javascript-delay 10000 --viewport-size 1280x1024 --margin-bottom 10mm --margin-top 10mm --page-size A4 https://jasperhg90.github.io/cv/ $OUTFILE

