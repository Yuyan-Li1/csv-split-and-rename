echo "Enter file name: "
read name
start=`date +%s`
mkdir output
split -l 10000 $name output/x
for f in output/*; do mv "$f" "$f.txt"; done
end=`date +%s`
runtime=$((end-start))
echo "All done :D"
echo "Total time used: $runtime s"
