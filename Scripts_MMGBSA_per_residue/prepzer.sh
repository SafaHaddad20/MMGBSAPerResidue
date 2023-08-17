$SCHRODINGER18/utilities/prepwizard -noidealizehtf -keepfarwat -noepik -noprotassign -noimpref structure_0.mae structure_0.mae -WAIT -LOCAL

for i in {1..19}; do

$SCHRODINGER18/utilities/prepwizard -noidealizehtf -keepfarwat -noepik -noprotassign -noimpref structure_$i.mae structure_$i.mae -WAIT -LOCAL
done

sleep 1m


for i in {20..50}; do

$SCHRODINGER18/utilities/prepwizard -noidealizehtf -keepfarwat -noepik -noprotassign -noimpref structure_$i.mae structure_$i.mae -WAIT -LOCAL
done

sleep 1m


for i in {51..70}; do

$SCHRODINGER18/utilities/prepwizard -noidealizehtf -keepfarwat -noepik -noprotassign -noimpref structure_$i.mae structure_$i.mae -WAIT -LOCAL
done

sleep 1m


for i in {71..99}; do

$SCHRODINGER18/utilities/prepwizard -noidealizehtf -keepfarwat -noepik -noprotassign -noimpref structure_$i.mae structure_$i.mae -WAIT -LOCAL
done

sleep 1m





