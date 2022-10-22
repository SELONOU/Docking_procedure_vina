for k in */; do (cd "$k" && for file in *.sdf; do mv "$file" "$(head -1 "$file")".sdf; done) ; done

