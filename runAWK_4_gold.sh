#!/usr/bin/env bash
while read -r file_name;
do

         awk '{l[NR] = $0} END {for (i=5; i<=NR-5; i++) print l[i]}' $file_name >>output_gold_complet_paper_4.csv
done < all_input

