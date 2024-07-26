#ifndef CONFIG_H
#define CONFIG_H

#include<bits/stdc++.h>
using namespace std;

#include "logging.hpp"

#include "cd.hpp"
#include "cp.hpp"
#include "ls.hpp"
#include "mv.hpp"
#include "rm.hpp"

/* Note: This does not need/use 'args', kept to keep API consistent */
void exit_(const vector<string> &args){
    info("Exiting the shell.");
    exit(0);
}

map<string, function<void(vector<string>)>> supported_commands = {
    {"exit", exit_},
    {"cd", cd::process},
    {"mv", mv::process},
    {"rm", rm::process},
    {"ls", ls::process},
    {"cp", cp::process}
}; 

#endif