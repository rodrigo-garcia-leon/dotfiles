#!/bin/bash

echo "Linking...";

for dotfile in src/.??*
do
    filename=$(echo "$dotfile" | awk -F "/" '{print $2}');
    link_file="$HOME/$filename";
    ln -s "$(pwd)""/$dotfile" "$link_file";
done