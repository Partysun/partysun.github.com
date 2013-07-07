#!/bin/sh

clear

printf "layout (default: 'post'): "
read layout
: ${layout:="post"}

printf "date (default: Y-m-d): "
read date
: ${date:=$(date +"%Y-%m-%d")}
: ${permalink_date:=$(date +"%Y/%m")}

printf "title (default: 'untitled'): "
read title
: ${title:="untitled"}

printf "published (default: 'true'): "
read published
: ${published:="true"}

echo "---
layout: $layout
title: $title
published: $published
permalink: /"$permalink_date"/"$title"/
---


" > "_posts/"$date"-"$title".md"

vim -c "startinsert" + "_posts/"$date"-"$title".md" -c 'w'

jekyll --no-server

