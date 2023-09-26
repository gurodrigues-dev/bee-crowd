#include <iostream>
  
using namespace std;
  
int main(){
    int n;
    string r;

    cin >> n;
    for(; n > 0; n--){
        cin >> r;

        if(r.length() == 5)
            cout << 3 << endl;

        else if((r[0] == 'o' && r[1] == 'n') || (r[1] == 'n' && r[2] == 'e') || (r[0] == 'o' && r[2] == 'e'))
            cout << 1 << endl;

        else
            cout << 2 << endl;
    }  
    return 0;
}