// void calc(){
//     unsigned int* p = (unsigned int*)0x80400000;
//     unsigned int mx=0;
//     for(int i=0;i<0x300000/4;++i){
//         if(p[i]>mx) mx = p[i];
//     }
//     *((unsigned int*)0x80700000) = mx;
//     return;
// }

void calc(){
    
    while(1){
        // for(register int i=0;i<0xfff;++i);
        volatile unsigned int *mia_finish = (unsigned int*)0x90000000;
        if(*mia_finish) break;
    }
    return;
}