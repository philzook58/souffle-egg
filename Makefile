all: add_uf rebuild libunionfind.so

add_uf: add_uf5.dl libunionfind.so
	souffle-compile.py -l unionfind -L . add_uf.cpp
	souffle -g add_uf add_uf5.dl -j 8

rebuild: rebuild2.dl libunionfind.so
	souffle -g rebuild rebuild2.dl -j 8
	souffle-compile.py -l unionfind -L . rebuild.cpp

libunionfind.so: unionlib.cpp
	/usr/bin/c++ -march=native -fopenmp -O3 -DUSE_NCURSES -DUSE_LIBZ -DUSE_SQLITE -fopenmp \
		-std=c++17 -o unionlib.o -c -fPIC unionlib.cpp \
		-I../../souffle/build/src/../include -I../../souffle/build/src/include \
		-I../../souffle/build/src/../include/souffle/swig -I../../souffle/build/src/include/souffle/swig \
		-I/home/philip/Documents/prolog/souffle/src/include
	g++ -shared -o libunionfind.so unionlib.o 
