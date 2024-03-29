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
using YAML::Node, YAML::LoadFile, clip::set_text;
using namespace std;

string currTime() {
    const auto now = chrono::system_clock::now();
    const time_t time = chrono::system_clock::to_time_t(now);
    string t = ctime(&time);
    if (t[t.length() - 1] == '\n') t.pop_back();
    return t;
}

string parseDayOfWeek() {
    const string ct = currTime();
    string ans;
    ans.push_back(ct[0]);
    ans.push_back(ct[1]);
    ans.push_back(ct[2]);
    return ans;
}

string parseTime() {
    const string ct = currTime();
    string ans;
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
                    if (lc != time) {
                        lc = time;
                        assert(conf["classes"][i]["meetingID"]);
                        auto meetingCode = conf["classes"][i]["meetingID"].as<string>(); //parse the meetingcode
                        while (meetingCode.find(' ') != string::npos) {
                            meetingCode.erase(meetingCode.find(' '), 1);
                        }
                        while (meetingCode.find('-') != string::npos) {
                            meetingCode.erase(meetingCode.find('-'), 1);
                        }
                        set_text(meetingCode);
                        assert(conf["classes"][i]["name"]);
                        cout << "现在是" << time << "," << conf["classes"][i]["name"] << "会议号已复制" << endl;
                        if (conf["classes"][i]["passwordProtected"]) {
                            if (conf["classes"][i]["passwordProtected"].as<bool>()) {
                                cout << "该会议有密码，是否复制密码？(y/n)";
                                char flag;
                                cin >> flag;
                                if (tolower(flag) == 'y') {
                                    assert(conf["classes"][i]["password"]);
                                    set_text(conf["classes"][i]["password"].as<string>());
                                }
                            }
                        }
                        if (conf["classes"][i]["autoJoin"] ? conf["classes"][i]["autoJoin"].as<bool>() : true) {
#ifdef _WIN32

                            string cmd = "start \"wemeet://page/inmeeting?meeting_code={";

#else

                            string cmd = "open \"wemeet://page/inmeeting?meeting_code=";

#endif
                            cmd.append(meetingCode);
                            cmd.append("\";");
                            system(cmd.c_str());
                            cout << "已自动进入会议" << endl;
                        }
                    }
                }
            }
        }
    }
}

#pragma clang diagnostic pop
