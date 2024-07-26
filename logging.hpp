#ifndef LOGGING_HPP
#define LOGGING_HPP

#include<bits/stdc++.h>
using namespace std;

#define error(...) { printf("[ERROR] "); printf(__VA_ARGS__); printf("\n"); }
#define info(...) { printf("[INFO] "); printf(__VA_ARGS__); printf("\n"); }

#ifdef DEBUG
    #define DEBUG_OUTPUT_FILE stdout
    // #define debug(...) fprintf(DEBUG_OUTPUT_FILE, "[DEBUG]"+__VA_ARGS__) and fflush(DEBUG_OUTPUT_FILE)
    #define debug(...) { \
        fprintf(DEBUG_OUTPUT_FILE, "[DEBUG] "); \
        fprintf(DEBUG_OUTPUT_FILE, __VA_ARGS__); \
        fprintf(DEBUG_OUTPUT_FILE, "\n"); \
    }
#else
    #define debug(...) /* Nothing */
#endif

#endif