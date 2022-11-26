while read -r ligand;
do
   echo "$ligand" 
   cp vinatemp.txt vina.txt
   sed -i s/XXX/$ligand/ vina.txt
   vina --config vina.txt
done < list_ligands.txt



