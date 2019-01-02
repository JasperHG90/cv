# Build jekyll site and create pdf of resume

# Store printed CV file here
OUTFILE="$PWD/JHGINN_CV.pdf"

## Build and serve jekyll site
#jekyll serve #> /dev/null 2>&1 &

# Convert cv html to pdf
# - Viewport sets the 'size' of the screen that is visiting the website
wkhtmltopdf --viewport-size 1280x1024 http://0.0.0.0:4000/cv/ $OUTFILE

# Kill server
#ps aux |grep jekyll |awk '{print $2}' | xargs kill -9
