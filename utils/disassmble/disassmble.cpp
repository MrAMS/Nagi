#include "disassmble.hpp"
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
// #include <filesystem>

std::vector<std::string> disassmble_instrs(disassmble_target_t target, const uint8_t *instrs, uint32_t bytes_len, uint32_t addr){
    char cmd[64];
    const char* prefix = target ==
        disassmble_target_t::la32r ? "loongarch32r-linux-gnusf-objdump" : 
        "?";
    const char* march = target ==
        disassmble_target_t::la32r ? "loongarch" : 
        "?";
    // FILE * fp_tmp = tmpfile();
    // assert(fp_tmp!=NULL);
    // assert(fwrite(instrs, bytes_len, 1, fp_tmp)==1);
    std::ofstream tmp("disassmble.tmp", std::ofstream::binary);
    tmp.write((char*)instrs, bytes_len);
    tmp.close();
    sprintf(cmd, "%s -D -b binary --adjust-vma=0x%x -m %s disassmble.tmp", prefix, addr, march);
    // printf("%s\n", cmd);
    FILE *fp=popen(cmd, "r");
    // if(fp==NULL) printf("error=%s\n", strerror(errno));
    assert(fp!=NULL);
    char info[128];
    std::vector<std::string> res;
    const int lines_start_index = 7;
    for(int i=0;(fgets(info, sizeof(info), fp) != NULL);++i){
        if(i<lines_start_index) continue;
        info[strcspn(info, "\n")] = 0;
        res.emplace_back(info);
    }
    fclose(fp);
    return res;
}