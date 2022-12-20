#include <iostream>
#include <yaml-cpp/yaml.h>
#include <chrono>

using YAML::Node, YAML::LoadFile;
using namespace std;
string currTime(){
    auto now=chrono::system_clock::now();
    time_t time=chrono::system_clock::to_time_t(now);
    return ctime(&time);
}
int main() {
    try{
        Node config = LoadFile("config.yml");
    } catch (exception& e) {
        cout<<e.what()<<endl;
        cout<<"Using default config"<<endl;
    }
//    while (true){
//        cout<<currTime()<<endl;
//    }
    return 0;
}
