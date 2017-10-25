require 'net/http'
require './npb_stats'
require './spreadsheet'

target_host = 'npb.jp'
http = Net::HTTP.new(target_host, 80)

NPBStats::TEAMS.each do |team, teamname|
  NPBStats::CATEGORIES.each do |category, categoryname|
    req = Net::HTTP::Get.new("/bis/2017/stats/id#{category}1_#{team}.html")
    res = http.request(req)
    html = res.body
    stats = NPBStats.parse(html)
    @sheet = Spreadsheet.new(teamname, categoryname)
    stats.each.with_index(2) { |player, row| @sheet.write(player, row) }
  end
end
