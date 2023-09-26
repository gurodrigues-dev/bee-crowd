#include <iostream> 
#include <cmath>

using namespace std;
  
int main() {
    
    int n, r;
    
    cin >> n;
    r = floor(n*log10(n/M_E) + log10(2*M_PI*n)/2.0) + 1;

    cout << r << endl;
    return 0; 
} 