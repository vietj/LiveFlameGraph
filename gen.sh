if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters!"
    exit 1
fi
if [ ! -f $1 ]; then
    echo "File $1 not found!"
    exit 1
fi
if [[ -z "${FLAMEGRAPH_DIR}" ]]; then
  echo "FLAMEGRAPH_DIR must be defined!"
  exit 1
else
  cmd="$FLAMEGRAPH_DIR/flamegraph.pl"
fi
if [ ! -f $cmd ]; then
    echo "$cmd not found!"
    exit 1
fi
while true;
do
  if [ "$1" -nt "$1.svg" ]; then
    $cmd --width 480 --hash $1 > "$1.svg";
  fi
  sleep 1;
done