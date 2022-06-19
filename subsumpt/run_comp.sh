rm add0.facts
make
for i in {0..8}
do
./add -j 4
done