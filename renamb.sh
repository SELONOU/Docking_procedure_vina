dir= $(pwd)
for k in *
        do
               cd "$k"
               for i in {1..400..1}
                       do
                               #echo "$k""$i".sdf "-->" "$k"_"$(head -1 "$k""$i".sdf)".sdf
                               #mv "$k""$i".sdf "$k"_"$(head -1 "$k""$i".sdf)".sdf
			       mv "$i".sdf "$k"_"$i".sdf
                       done
                cd ..

                done

