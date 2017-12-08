pref_capitals = {
  (43.06417, 141.34694): '北海道(札幌)',
  (40.82444, 140.74): '青森県(青森市)',
  (39.70361, 141.1525): '岩手県(盛岡市)'
}

loc = (39.70361, 141.1525)
for key in pref_capitals:
    if loc == key:
        print(pref_capitals[key])
        break
