#!/usr/bin/env bash
while read -r lig
do
         awk '{print FILENAME (NF?" ":"") $0}' "$lig" >> "$lig".log
 done < all_input

