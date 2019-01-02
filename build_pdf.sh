# Build jekyll site and create pdf of resume

# Store printed CV file here
OUTFILE="$PWD/JHGINN_CV.pdf"

## Build and serve jekyll site
#jekyll serve #> /dev/null 2>&1 &

# Convert cv html to pdf
# - Viewport sets the 'size' of the screen that is visiting the website
wkhtmltopdf --javascript-delay 5000 --viewport-size 1280x1024 https://jasperhg90.github.io/cv/ $OUTFILE

# Kill server
#ps aux |grep jekyll |awk '{print $2}' | xargs kill -9
