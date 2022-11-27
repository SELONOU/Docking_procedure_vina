#!/usr/bin/env bash
while read -r lig;
do
	mv "$lig"_m1.rnk "$lig"
done < all_input
