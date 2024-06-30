#pragma once
#include <chrono>

class Timer{
public:
    Timer(){
        clear();
        start();
    }
    void start(){
        start_time = std::chrono::system_clock::now();
        running = true;
    }
    void clear(){
        pre_duration = std::chrono::duration<double, std::milli>::zero();
        running = false;
    }
    Timer& stop(){
        if(running){
            const auto stop_time = std::chrono::system_clock::now();
            pre_duration += stop_time-start_time;
        }
        running = false;
        return *this;
    }
    double get_ms(){
        if(running){
            stop();
            start();
        }
        return std::chrono::duration_cast<std::chrono::milliseconds>(pre_duration).count();
    }
private:
    std::chrono::time_point<std::chrono::system_clock> start_time;
    std::chrono::duration<double, std::milli> pre_duration;
    bool running;
};