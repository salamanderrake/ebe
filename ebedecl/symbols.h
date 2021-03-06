#ifndef SYMBOLS_H
#define SYMBOLS_H
#include <string>
#include <map>
#include <vector>

using namespace std;

struct label {
    string name;
    int loc;
    int size;
    string format;
};

struct struc {
    string name;
    vector<label> parts;
    int loc;
};

struc *start_struc(char *s);
void insert_label ( char *s, int loc );
void set_size ( char *s, int size );
void set_location ( char *s, int loc );
void set_format ( string s, string f );
int get_size ( string s );
int get_location ( string s );
string get_format ( string s );
void dump_labels();
void dump_strucs();
#endif
