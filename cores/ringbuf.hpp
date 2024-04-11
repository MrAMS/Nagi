#pragma once
/**
 * @brief 环形队列
 * 
 * @tparam T 类型
 * @tparam STR_RING_BUF_SIZE 队列长度, 必须是2的幂次
 * @author Kika
 */

template <typename T, int STR_RING_BUF_SIZE>
class RingBuf{
    static_assert((STR_RING_BUF_SIZE & (STR_RING_BUF_SIZE - 1)) == 0, "STR_RING_BUF_SIZE must be a power of 2");
public:
    bool full() const{
        return (start^STR_RING_BUF_SIZE)==end;
    }

    bool empty() const{
        return start == end;
    }

    bool push(T val){
        auto overwrite = false;
        if(full()){
            start = srb_incp(start);
            overwrite = true;
        }
        data[end&(STR_RING_BUF_SIZE-1)] = val;
        end = srb_incp(end);
        return overwrite;
    }

    bool pop(T* val){
        if(empty()) return false;
        *val = data[start&(STR_RING_BUF_SIZE-1)];
        start = srb_incp(start);
        return true;
    }

    bool pop(T& val){
        if(empty()) return false;
        val = data[start&(STR_RING_BUF_SIZE-1)];
        start = srb_incp(start);
        return true;
    }

private:
    int start=0; // index of oldest element
    int end=0; // index at which to write new element
    T data[STR_RING_BUF_SIZE];

    int srb_incp(int p){
        return (p+1)&(2*STR_RING_BUF_SIZE-1);
    }
};