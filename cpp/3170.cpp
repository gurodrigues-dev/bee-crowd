#include <iostream>
 
using namespace std;

int main() {
    int n, m, r;
    cin >> n >> m;
    r = m/2 - n;
    
    if (r > 0)
        cout << "Faltam " << r << " bolinha(s)" << endl;
    
    else
        cout << "Amelia tem todas bolinhas!" << endl;
        
    return 0;
}