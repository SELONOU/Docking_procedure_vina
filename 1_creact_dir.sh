for file in *.sdf
    do
        dir=${file%*.sdf}  # delete the suffix
    mkdir -p $dir
    scp "$file" "$dir"
done
