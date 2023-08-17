#!/bin/bash
cp get_dG_per_residue_LO.sh CHEMBL1097/MMGBSA_per_res/
cd CHEMBL1097/MMGBSA_per_res/

mkdir chain_A
mv chainA* chain_A

mkdir chain_B
mv chainB* chain_B

mkdir chain_C
mv chainC* chain_C


mkdir chain_D
mv chainD* chain_D

cp get_dG_per_residue_LO.sh chain_D/
cd chain_D


for f in chainD_*/;do
	
	cp  get_dG_per_residue_LO.sh $f
	cd $f
	./get_dG_per_residue_LO.sh
	content=$(cat "deltaG.txt")
        echo "$f $content" >> ../../chainD_dg.txt
	cd ../

done
