#include<bits/stdc++.h>

using namespace std;
bool sera(string x,string y)
 {
    return (x == "pedra" && y == "tesoura") || (x == "papel" && y == "pedra") || (x == "tesoura" && y == "papel");
}


int main()
{
    string s,s1,s2;
    
    while(cin >> s >> s1 >> s2)
    {
        if (sera(s, s2) && sera(s, s1))
             printf("Os atributos dos monstros vao ser inteligencia, sabedoria...\n");
        else if(sera(s1,s2) && sera(s1,s))
            printf("Iron Maiden's gonna get you, no matter how far!\n");
        else if(sera(s2,s1) && sera(s2,s))
            printf("Urano perdeu algo muito precioso...\n");
        else
            printf("Putz vei, o Leo ta demorando muito pra jogar...\n");


    }
    return 0;
}