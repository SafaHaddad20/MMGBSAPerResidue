for f in structure*maegz;
do
	newF=$(echo $f | sed 's/.maegz/.mae.gz/1')
	mv $f $newF
	gunzip $newF
	echo $newF ' is Done'
done

