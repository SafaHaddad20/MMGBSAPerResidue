for i in {0..99}; do

        awk -F "," ' NR==2 {print $2, $62}' structure_$i-out-out.csv >>  all_frames_deltaG.txt

done
#awk '{s+=$1} END {print s/100}' all_frames_deltaG.txt > average_all_frames.txt

        awk '{s+=$2; ss+=$2^2} END{print m=s/NR, sqrt(ss/NR-m^2)}' all_frames_deltaG.txt >> deltaG.txt                                                                                                                        
