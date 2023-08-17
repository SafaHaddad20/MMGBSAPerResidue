
$SCHRODINGER18/run pv_convert.py -mode split_pv structure_0.mae

for i in {1..99}; do
	$SCHRODINGER18/run pv_convert.py -mode split_pv structure_$i.mae
done





