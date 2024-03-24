#!/usr/bin/env bash
copylists="config.py"
overridelists="requirements.txt"
reponame="hkyyi_qljb"
for sourcepath in $QL_DIR/data/repo/$reponame/*
do
    filename="$(basename "$sourcepath")"
    targetpath="$QL_DIR/data/scripts/$reponame/$filename"
    if [[ -f "$targetpath" ]]
    then
        if [[ "$copylists" =~ "$filename" ]]
        then
            echo "$targetpath已存在，跳过复制"
        fi
        if [[ "$overridelists" =~ "$filename" ]]
        then
            echo "$targetpath已存在，开始覆盖..."
            cp -f "$sourcepath" "$targetpath"
            echo "$targetpath覆盖完成"
        fi
    else
        if [[ "$copylists $overridelists" =~ "$filename" ]]
        then
            echo "$targetpath不存在，开始复制..."
            cp "$sourcepath" "$targetpath"
            echo "$targetpath复制完成"
        fi
    fi
done