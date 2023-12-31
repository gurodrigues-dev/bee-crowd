#include <bits/stdc++.h>
#define DEBUG false
#define debugf if (DEBUG) printf
#define MAXN 200309
#define MAXM 900009
#define MOD 1000000007
#define INF 0x3f3f3f3f
#define INFLL 0x3f3f3f3f3f3f3f3f
#define EPS 1e-9
#define PI 3.141592653589793238462643383279502884
#define FOR(x,n) for(int x=0; (x)<int(n); (x)++)
#define FOR1(x,n) for(int x=1; (x)<=int(n); (x)++)
#define REP(x,n) for(int x=int(n)-1; (x)>=0; (x)--)
#define REP1(x,n) for(int x=(n); (x)>0; (x)--)
#define pb push_back
#define pf push_front
#define fi first
#define se second
#define mp make_pair
#define all(x) x.begin(), x.end()
#define mset(x,y) memset(&x, (y), sizeof(x));
using namespace std;
typedef vector<int> vi;
typedef pair<int, int> ii;
typedef long long ll;
typedef unsigned long long ull;
typedef long double ld;
typedef unsigned int uint;

int n, k;
int arr[MAXN], sum[MAXN];

int main() {
	scanf("%d %d", &n, &k);
	mset(arr, 0);
	FOR1(i, k) {
		int x;
		scanf("%d", &x);
		x++;
		arr[x]++;
		arr[x+n]++;
	}
	sum[0] = 0;
	FOR1(i, 2*n) {
		sum[i] = arr[i] + sum[i-1];
	}
	bool ok = false;
	k = n/k;
	FOR(i, k) {
		ok = true;
		FOR(j, n/k) {
			if (sum[j*k + i + k] - sum[j*k + i] != 1) ok = false;
		}
		if (ok) break;
	}
	if (ok) printf("S\n");
	else printf("N\n");
	return 0;
}