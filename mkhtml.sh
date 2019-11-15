#!/bin/sh
#pandoc README.md -s --self-contained -t html5 -c my.css -o docs/index.html
#pandoc README.md -s --self-contained -t html5 -c foundation.css -o docs/index.html
pandoc README.md -s --self-contained -t html5 -c github.css -o docs/index.html

