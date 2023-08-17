
$SCHRODINGER18/prime_mmgbsa -rflexgroup polarh -use_ligand_charges -TMPLAUNCHDIR -ATTACHED -report_prime_log yes -out_type COMPLEX -flexdist 3.0 structure_0-out_pv.mae


for i in {1..19}; do
        $SCHRODINGER18/prime_mmgbsa -rflexgroup polarh -use_ligand_charges -TMPLAUNCHDIR -ATTACHED -report_prime_log yes -out_type COMPLEX -flexdist 3.0 structure_$i-out_pv.mae

done

wait -n

for i in {20..50}; do
        $SCHRODINGER18/prime_mmgbsa -rflexgroup polarh -use_ligand_charges -TMPLAUNCHDIR -ATTACHED -report_prime_log yes -out_type COMPLEX -flexdist 3.0 structure_$i-out_pv.mae

done

wait -n


for i in {51..70}; do
        $SCHRODINGER18/prime_mmgbsa -rflexgroup polarh -use_ligand_charges -TMPLAUNCHDIR -ATTACHED -report_prime_log yes -out_type COMPLEX -flexdist 3.0 structure_$i-out_pv.mae

done

wait -n 


for i in {71..100}; do
        $SCHRODINGER18/prime_mmgbsa -rflexgroup polarh -use_ligand_charges -TMPLAUNCHDIR -ATTACHED -report_prime_log yes -out_type COMPLEX -flexdist 3.0 structure_$i-out_pv.mae

done

wait -n

