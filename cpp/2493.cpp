#include "bits/stdc++.h"
#define f(inicio, fim) for(int i = inicio; i < fim; i++)
#define ff(inicio, fim) for(int j = inicio; j < fim; j++)
#define fff(inicio, fim) for(int k = inicio; k < fim; k++)
#define print(vetor) for(auto elem : vetor) cout << elem << " "

using namespace std;


int main() {

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int t;
    while(cin >> t){
        vector< vector > vetor(t);
        f(0, t){
            string tmp, foo;
            int aux;
            cin >> aux;
            vetor[i].push_back(aux);
            cin >> tmp;
            istringstream ss(tmp);
            while(getline(ss, foo, '='))
                vetor[i].push_back(atoi(foo.c_str()));
        }

        set nome;
        f(0, t){
            string name;
            int pos;
            char op;
            cin >> name >> pos >> op;
            --pos;
            int prim = vetor[pos][0], seg = vetor[pos][1], ter = vetor[pos][2];

            switch (op){
            case '+':
                if(prim + seg != ter)
                    nome.insert(name);
                break;
            case '-':
                if(prim - seg != ter)
                    nome.insert(name);
                break;
            case '*':
                if(prim * seg != ter)
                    nome.insert(name);
                break;
            case 'I':
                if(prim + seg == ter || prim - seg == ter || prim * seg == ter)
                    nome.insert(name);
                break;
            }
        }

        if(nome.size() == 0)
            cout << "You Shall All Pass!\n";
        else if(nome.size() == t)
            cout << "None Shall Pass!\n";
        else{
            auto it = nome.begin();
            cout << *it;
            it = next(it);
            while(it != nome.end()){
                cout << " " << *it;
                it = next(it);
            }
            cout << "\n";
        }
    }

return 0;
}
