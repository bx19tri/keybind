#!/bin/sh
#
# github.com の settings で、master branch / docs folder を公開対象
# として選択する場合は、dosc/ 以下に index.html を生成して push する
#
# 2019/11/15
# master branch を公開対象に選んだ場合、index.html が無ければ、
# README.md が勝手に変換される。この結果が本スクリプトで生成する結果
# よりも好ましいので、master branch を公開する設定に変更した。

#pandoc README.md -s --self-contained -t html5 -c my.css -o docs/index.html
#pandoc README.md -s --self-contained -t html5 -c foundation.css -o docs/index.html
pandoc README.md -s --self-contained -t html5 -c github.css -o docs/index.html

