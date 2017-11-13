
FILE=$1

# generate_impress_html="pandoc --template impress-template.html -V impress-url=impress.js -s -t html4 --section-divs -o "$FILE".html "$FILE".md"
generate_impress_html="pandoc -t revealjs -s -o "$FILE".html "$FILE".md"

echo  $(date -Iseconds): generating html: $FILE

if eval $generate_impress_html; then
    if [ "$(uname -s)" != "MSYS_NT-10.0" ]; then
        chrome_window_id=`xdotool search "(impress.*chrome)"`
        if [ -z "$chrome_window_id" ]; then
            echo  $(date -Iseconds): opening in new chrome
            google-chrome "$FILE".html &
        else
            echo  $(date -Iseconds): opening in existing chrome with pid: $chrome_window_id
            current_window_id=`xdotool getactivewindow`
            xdotool windowactivate "$chrome_window_id"
            xdotool key ctrl+r
            xdotool windowactivate "$current_window_id"
        fi
    fi
fi
