#include<bits/stdc++.h>
using namespace std;

#include "config.hpp"
#include "logging.hpp"
#include "utils.hpp"
#include "exceptions.hpp"

class shell{
private:
    string get_input(){
        string input;
        printf("[user@starship]$ ");
        getline(cin, input);
        debug("Got input: '%s'", input.c_str());
        return input;
    }
    void process_input(string input){
        // Preprocess
        vector<string> segments;
        utils::partition(input, segments);
        // Validation and Interpretation
        if(segments.size() == 0) return; // Empty input
        try{
            // Input Validation
            utils::validate_input(segments);
            debug("Validation success!");
            // Find/Map corresponding command
            auto &mapped_command = supported_commands[segments[0]];
            segments.erase(segments.begin()); // Remove first segment
            (mapped_command)(segments); // Run the corresponding command
        }catch(const exception& e){ 
            error(e.what()); 
        }
    }
public:
    void run(){ 
        cout << endl;
        while(1) process_input(get_input()); 
    }
};

int main(){
    shell terminal;
    terminal.run();
    return 0;
}