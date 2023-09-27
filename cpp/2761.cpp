#include <iostream>
#include <string>
#include <cstdio>
#include <iomanip>

using namespace std;

int main()
{
    int integer;
    float floating;
    char character;
    string s;
    cin >> integer >> floating >> character >> ws;
    getline(cin, s);
    char c='\t';
    cout << integer << fixed << floating << character << s << endl;
    cout << integer << c << floating << c << character << c << s << endl;
    printf("%10d%10.6f%10c", integer, floating, character);
    cout << right << setw(10) << s << endl;

    return 0;
}