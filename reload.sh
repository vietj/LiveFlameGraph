if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters!"
    exit 1
fi
if [ ! -f $1 ]; then
    echo "File $1 not found!"
    exit 1
fi
fswatch -o $1 | xargs -n1 -I {} osascript -e 'tell application "Google Chrome" to tell the active tab of its first window to reload'
