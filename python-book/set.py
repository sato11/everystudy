prime = {2, 3, 5, 7, 13, 17}
fib = {1, 1, 2, 3, 5, 8, 13}

# OR
collection = prime | fib
print(collection)



dice = {1, 2, 3, 4, 5, 6}
even = {2, 4, 6, 8, 10}

# remainder
odd_dice = dice - even
print(odd_dice)



prefs = {'北海道', '青森', '秋田', '岩手'}
capitals = {'札幌', '青森', '秋田', '盛岡'}

# AND
pref_cap = prefs & capitals
print(pref_cap)

# XOR
pref_cap2 = prefs ^ capitals
print(pref_cap2)
