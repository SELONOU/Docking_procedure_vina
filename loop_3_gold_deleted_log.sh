#!/usr/bin/env bash
while read -r lig;
do
	mv "$lig".log "$lig"
done < all_input
