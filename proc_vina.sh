mkdir log2

ls *.log > all_input

vi all_input :  :%s/.log//g

delet_ext.sh
while read -r i;
do mv $i.log $i
done < all_input


middle_add_beg_col_gold.sh

while read -r lig
do
         awk '{print FILENAME (NF?" ":"") $0}' "$lig" >> "$lig".log
done < all_input


mkdir log3_with_ext

delet_ext.sh
while read -r i;
do mv $i.log $i
done < all_input


runAWK_smina.sh


while read -r file_name;
do
         echo $file_name
         awk '{l[NR] = $0} END {for (i=26; i<=NR; i++) print l[i]}' $file_name >> "$file_name".csv
done < all_input

delet_ext.sh

while read -r mol;
do sed -i '11d' "$mol".csv
done < all_input
