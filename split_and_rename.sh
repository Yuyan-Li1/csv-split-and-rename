echo "Enter file name: "
read name
start=`date +%s`
mkdir output
# Change the number below to change the maximum number of lines in a single
# output file.
split -l 999999 $name output/x
for f in output/*; do mv "$f" "$f.txt"; done
end=`date +%s`
runtime=$((end-start))
echo "All done :D"
echo "Total time used: $runtime s"
