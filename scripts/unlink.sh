#!/bin/bash

echo "Unlinking...";

for dotfile in src/.??*
do
    filename=$(echo "$dotfile" | awk -F "/" '{print $2}');
    link_file="$HOME/$filename";
    rm "$link_file";
done