#!/bin/bash

#for f in desmond_md_job_*; do

	base="desmond_md_CHEMBL1097"
	basename="CHEMBL1097"

	i=600

	until [ $i -eq 700 ]
	do
        echo Calculating residue $i
	cd $basename
	mkdir MMGBSA_per_res
	cd MMGBSA_per_res
	mkdir chainD_$i
	
	cd ../..
	cp prepzer.sh pv_convert.sh prime_mmgbsa.sh $basename/MMGBSA_per_res/chainD_$i
	cp trajectory_write2018.sh my_convert.sh $basename
	
	cd $basename
	sed  -i "s/lalehan/$(($i))/g" trajectory_write2018.sh
	sed -i "s/desmond_md_job/desmond_md_$basename/g" trajectory_write2018.sh
	./trajectory_write2018.sh & wait
	./my_convert.sh & wait
	mv structure* MMGBSA_per_res/chainD_$i
	cd MMGBSA_per_res/chainD_$i
	./prepzer.sh & wait
	./pv_convert.sh & wait
	./prime_mmgbsa.sh & wait	
	cd ../../../

	((i=i+1))

	
        done

#done


