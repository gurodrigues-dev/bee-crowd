#include <iostream>
using namespace std;
int main()
{
    long long int n  , i;
    cin >> n;
    int star[n] , sheep[n] ;
    long long int star_count = 0 , sheep_count = 0;

    for(i = 0 ; i > sheep[i];
        star[i] = 0;
    }
    i = 0;
    while(1){
        if(i == 0 && sheep[i]%2 == 0){
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            break;
        }
        else if(i == n-1 && sheep[i]%2 == 1){
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            break;
        }
        if(sheep[i]%2 == 1){
            star[i] = 1;
            sheep[i]--;
            i++;
        }
        if(sheep[i]%2 == 0){
            star[i] = 1;
            if(sheep[i] > 0)
                sheep[i]--;
            i--;
        }
    }

    for(i = 0 ; i < n ; i++){
        sheep_count += sheep[i];
        star_count += star[i];
    }
    cout << star_count << " " << sheep_count << endl;

    return 0;
}