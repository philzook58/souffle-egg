#include <cstdint>
#include "souffle/CompiledSouffle.h"
#include "souffle/datastructure/UnionFind.h"



extern "C" {

souffle::SparseDisjointSet<int32_t> ds = souffle::SparseDisjointSet<int32_t>(); 

int32_t unionNodes(int32_t x, int32_t y){
    ds.unionNodes(x,y);
    return ds.findNode(y);
}
int32_t findNode(int32_t x){
    return ds.findNode(x);
}


}