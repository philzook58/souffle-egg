/usr/bin/c++ -march=native -fopenmp -O3 -DUSE_NCURSES -DUSE_LIBZ -DUSE_SQLITE -fopenmp \
    -std=c++17 -o unionlib.o -c -fPIC unionlib.cpp \
    -I../../souffle/build/src/../include -I../../souffle/build/src/include \
    -I../../souffle/build/src/../include/souffle/swig -I../../souffle/build/src/include/souffle/swig \
    -I/home/philip/Documents/prolog/souffle/src/include
g++ -shared -o libunionfind.so unionlib.o 