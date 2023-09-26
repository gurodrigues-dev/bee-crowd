N, H, L = map(int, input().split())
horror_list = set(map(int, input().split()))

horror_index = [float('inf')] * N

for movie_id in horror_list:
    horror_index[movie_id] = 0

similar_movies = [[] for _ in range(N)]

for _ in range(L):
    ai, bi = map(int, input().split())
    similar_movies[ai].append(bi)
    similar_movies[bi].append(ai)

for movie_id in range(N):
    if horror_index[movie_id] == 0:
        continue  

    min_similar_horror_index = float('inf')

    for similar_id in similar_movies[movie_id]:
        min_similar_horror_index = min(min_similar_horror_index, horror_index[similar_id])

    if min_similar_horror_index < float('inf'):
        horror_index[movie_id] = min_similar_horror_index + 1

best_movie_id = -1
highest_horror_index = -1

for movie_id in range(N):
    if horror_index[movie_id] > highest_horror_index:
        highest_horror_index = horror_index[movie_id]
        best_movie_id = movie_id

print(best_movie_id)