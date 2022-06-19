
rm add0.facts
for i in {0..10}
do
souffle add_subsumpt.dl -j 4
done