#ifndef UTILS_HPP
#define UTILS_HPP

#include<bits/stdc++.h>
using namespace std;

#include "config.hpp"
#include "logging.hpp"
#include "exceptions.hpp"

namespace utils{

void validate_input(const vector<string> &segments){
    if(supported_commands.find(segments[0]) == supported_commands.end()) 
        throw CommandNotFound(segments[0]);
    // // Otherwise, validate other arguments
    // throw NotImplemented();
}

void partition(const string &input, vector<string> &segments){
    segments.push_back("");
    for(char c : input){
        if(c == ' '){
            if(segments.back().size()) // Only add new segment if the last segment was used
                segments.push_back("");
            continue;
        }
        segments.back() += c;
    }
    // Incase input ends with a space
    if(segments.back().size() == 0) segments.pop_back();
    return;
}

};

#endif