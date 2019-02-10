
## Live Flame Graph

A couple of scripts to live demo [Flame Graphs](http://www.brendangregg.com/flamegraphs.html)

### Generate a Flame Graph SVG

Requires the `$FLAMEGRAPH_DIR` pointing to the [Flame Graph directory](https://www.github.com/brendangregg/FlameGraph)

```
> gen.sh test.txt
```

Will produces the Flame Graph `test.txt.svg`

### Reload the generated Flame Graph in a Chrome tab

Requires [fswatch](https://github.com/emcrisostomo/fswatch) to be installed.

```
> sh reload.sh test.txt.svg
```

