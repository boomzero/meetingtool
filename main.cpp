#include <iostream>
#include <yaml-cpp/yaml.h>
#include <chrono>

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
    try {
        Node config = LoadFile("config.yml");
    } catch (exception &e) {
        cout << e.what() << endl;
        cout << "Using default config" << endl;
    }
    cout << parseTime() << endl;
    return 0;
}
