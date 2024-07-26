#ifndef EXCEPTIONS_H
#define EXCEPTIONS_H

#include <bits/stdc++.h>
#include <exception>
using namespace std;

class NotImplemented : public exception {
public:
    NotImplemented(){}
    const char* what() const noexcept override {
        return "This feature has not been implemented!";
    }
};

class CommandNotFound : public exception {
    string message;
public:
    CommandNotFound(const string &command)
        :message{string("[CommandNotFound] Command not found: ") + command}
    {}
    const char* what() const noexcept override {
        return message.c_str();
    }
};

class InvalidUsage : public exception {
    string message;
public:
    InvalidUsage(const string &correct_usage)
        :message{string("[InvalidUsage] ") + correct_usage}
    {}
    const char* what() const noexcept override {
        return message.c_str();
    }
};

class UnexceptedFailure : public exception {
    string message;
public:
    UnexceptedFailure(const string &operation)
        :message{string("[UnexpectedFailure] Could not perform the operation: ") + operation}
    {}
    const char* what() const noexcept override {
        return message.c_str();
    }
};

#endif