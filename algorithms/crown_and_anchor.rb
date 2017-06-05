# frozen_string_literal: true

faces = %i(
  crown
  anchor
  heart
  spade
  club
  diamond
).freeze

funds = 50
round = 0

while funds.positive? && funds < 100
  round += 1
  puts "第#{round}ラウンド"
  puts "  手持ち資金: ¥#{funds}"

  bettings_map = {}
  faces.each { |face| bettings_map[face] = 0 }

  total_bet = rand(1..funds)

  if total_bet == 7
    face = faces.sample
    bettings_map[face] += total_bet
  else
    remainings = total_bet
    while remainings.positive?
      bet = rand(1..remainings)
      face = faces.sample
      bettings_map[face] += bet
      remainings -= bet
    end
  end
  funds -= total_bet

  hand = []
  3.times { hand.push(faces.sample) }

  winnings = 0
  hand.each do |roll|
    winnings += bettings_map[roll]
  end

  puts "  掛け金: ¥#{total_bet} (" +
       bettings_map.map { |key, val| "#{key}: ¥#{val}" }.join(', ') +
       ')'

  puts "  出目: #{hand.join(', ')}"
  puts "  払戻金: ¥#{winnings}"

  funds += winnings
end

puts "  残金: ¥#{funds}"
puts 100 < funds ? "意気揚々と船に戻る。\n" : "トボトボと船に帰る。\n"
