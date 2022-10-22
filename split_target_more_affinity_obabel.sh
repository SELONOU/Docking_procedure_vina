for mol in *.pdbqt;
	do obabel "$mol" -O "$mol" -m;
done 
