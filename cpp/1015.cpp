#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(){
    float x1, x2, y1, y2, distancia;
    
    cout << fixed << setprecision(1);
    cin >> x1 >> y1;
    cin >> x2 >> y2;
    
    cout << fixed << setprecision(4);
    cout << sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1)) << endl;
    return 0;
}