
#rm add0.facts
souffle init.dl
for i in {0..10}
do
souffle add_uf5.dl -j 4
#cp add.csv add0.facts
#souffle rebuild2.dl -j 8
#cp add.csv add0.facts
done