#include <iostream>
#include <yaml-cpp/yaml.h>
#include <chrono>
#include "clip/clip.h"
#pragma clang diagnostic push
#pragma ide diagnostic ignored "EndlessLoop"
#ifdef _WIN32
#include <windows.h>
#else

#include <unistd.h>

#endif
#define conf config[dow]
using YAML::Node, YAML::LoadFile;
using namespace std;

string currTime() {
    auto now = chrono::system_clock::now();
    time_t time = chrono::system_clock::to_time_t(now);
    string t = ctime(&time);
    if (t[t.length() - 1] == '\n') t.pop_back();
    return t;
}

string parseDayOfWeek() {
    string ct = currTime(), ans;
    ans.push_back(ct[0]);
    ans.push_back(ct[1]);
    ans.push_back(ct[2]);
    return ans;
}

string parseTime() {
    string ct = currTime(), ans;
    ans.push_back(ct[11]);
    ans.push_back(ct[12]);
    ans.push_back(ct[13]);
    ans.push_back(ct[14]);
    ans.push_back(ct[15]);
    return ans;
}

int main() {
    Node config;
    try {
        config = LoadFile("config.yml");
    } catch (exception &e) {
        cout << e.what() << endl;
        cout << "Using default config" << endl;
    }
    string dow = parseDayOfWeek();
    assert(!config.IsNull());
    if (conf["enableMsg"]) {
        if (conf["msg"]) cout << conf["msg"] << endl;
    }
    int classCnt;
    if (conf["classCnt"]) {
        classCnt = conf["classCnt"].as<int>();
    } else {
        cerr << "classCnt not found in config, exiting" << endl;
        return 0;
    }
    string time = parseTime(), lc;
    while (true) {
        sleep(1);
        time = parseTime();
        for (int i = 0; i < classCnt; ++i) {
            if (!conf["classes"][i]) continue;
            if (conf["classes"][i]["startTime"]) {
                if (conf["classes"][i]["startTime"].as<string>() == time) {

                }
            }
        }
    }
}

#pragma clang diagnostic pop