#include <bits/stdc++.h>
#define DEBUG false
#define debugf if (DEBUG) printf
#define MAXN 1000009
#define MAXM 900009
#define MAXLOGN 20
#define ALFA 256
#define MOD 1000000007
#define INF 0x3f3f3f3f
#define INFLL MAXN*1ll*MAXN
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
#define sz(x) int(x.size())
#define all(x) x.begin(), x.end()
#define mset(x,y) memset(&x, (y), sizeof(x))
using namespace std;
typedef long long ll;
typedef unsigned long long ull;
typedef long double ld;
typedef unsigned int uint;
typedef vector<int> vi;
typedef pair<int, int> ii;

bitset<MAXN> bs;
int mu[MAXN], pmu[MAXN];

void sieve() {
	bs.set();
	FOR(i, MAXN) mu[i] = 1;
	bs[0] = bs[1] = 0;
	for(ll i = 2; i < MAXN; i++) {
		if (!bs[i]) continue;
		for(ll j = i; j < MAXN; j += i) {
			bs[j] = 0;
			mu[j] *= -1;
		}
		ll i2 = i*i;
		for(ll j = i2; j < MAXN; j += i2) {
			mu[j] = 0;
		}
	}
	mu[0] = pmu[0] = 0;
	FOR1(i, MAXN-1) pmu[i] = mu[i] + pmu[i-1];
}

ll itmiha(ll n, ll i, ll j) {
	if (j < i) return 0;
	if (n/(i*i) == n/(j*j)) {
		return (n/(i*i))*(pmu[j]-pmu[i-1]);
	}
	ll m = (i+j)/2;
	return itmiha(n, i, m) + itmiha(n, m+1, j);
}

int main() {
	sieve();
	int T;
	scanf("%d", &T);
	while(T --> 0) {
		ll n;
		scanf("%lld", &n);
		ll lo = -1;
		ll hi = INFLL;
		while(hi > lo+1) {
			ll mid = (hi + lo) / 2;
			//if (itmiha_brute(mid) < n) lo = mid;
			if (itmiha(mid, 1, sqrt(mid)) < n) lo = mid;
			else hi = mid;
		}
		printf("%lld\n", hi);
	}
	return 0;
}