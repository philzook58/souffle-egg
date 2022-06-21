rm add0.facts
make
for i in {0..8}
do
#LD_LIBRARY_PATH=. ./add_uf3 -j 8
#cp add.csv add0.facts
#LD_LIBRARY_PATH=. ./rebuild -j 8
#cp add.csv add0.facts
LD_LIBRARY_PATH=. ./add_uf -j 4
done