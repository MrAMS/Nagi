#include "stdio.h"

#define LEN 0x100000
struct {
    int r;
    int w;
    int rorder;
    int worder;
} vis[LEN];
int pad[LEN];
int rorder_tot;
int worder_tot;
unsigned int load(unsigned int addr){
    if(vis[addr].r==0) vis[addr].rorder = rorder_tot++;
    vis[addr].r += 1;
    return pad[addr];
}

void store(unsigned int addr, unsigned int data){
    if(vis[addr].w==0) vis[addr].worder = worder_tot++;
    vis[addr].w += 1;
    pad[addr] = data;
}

void crn(int pad[],unsigned int a,unsigned int b,unsigned int n) {
    unsigned int k;
    for (k=0; k!=0x80000; k++){
        // pad[k] = k;
        store(k, k);
    }
    for (k=0; k!=n; k++) {
        unsigned int t, addr1, addr2;
        addr1 = a & 0x7FFFF;
        // t = (a >> 1) ^ (pad[addr1] << 1); // Replace the AES step
        t = (a >> 1) ^ (load(addr1) << 1); // Replace the AES step
        // pad[addr1] = t ^ b;
        store(addr1, t ^ b);
        addr2 = t & 0x7FFFF;
        b = t;
        // t = pad[addr2];
        t = load(addr2);
        a += b * t;
        // pad[addr2] = a;
        store(addr2, a);
        a ^= t;
    } 
}

int main(){
    crn(pad, 0xdeadbeef, 0xfaceb00c, LEN);
    const int step = 100;
    // // r w cnt
    // for(int i=0;i+step<LEN;i+=step){
    //     printf("%d: ", i);
    //     for(int j=0;j<step;++j)
    //         printf("%d,%d ", vis[i+j].r, vis[i+j].w);
    //     puts("");
    // }
    // r w first order
    for(int i=0;i+step<LEN;i+=step){
        printf("%d: ", i);
        for(int j=0;j<step;++j)
            printf("%d,%d ", vis[i+j].rorder, vis[i+j].worder);
        puts("");
    }
    return 0;
}