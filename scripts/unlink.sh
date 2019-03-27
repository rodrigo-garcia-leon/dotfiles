#!/bin/bash

home_target_dir=$HOME"/";
nvim_target_dir=$HOME"/.config/nvim/";

echo "Unlinking...";

for dotfile in src/**/*
do
    destination=$(echo "$dotfile" | awk -F "/" '{print $2}');
    filename=$(echo "$dotfile" | awk -F "/" '{print $3}');
    destination_dir_var=$destination"_target_dir";
    destination_dir=${!destination_dir_var};
    prefix=$([[ "home" = "$destination" ]] && echo "." || echo "");
    link_file="$destination_dir$prefix$filename"
    rm "$link_file";
done