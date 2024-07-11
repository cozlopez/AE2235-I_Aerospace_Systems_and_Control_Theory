rng(1)
a = rand(6, 6)
a(5,:) = [2 3 4 5 6 7]
ans = sum(a, 'all')

