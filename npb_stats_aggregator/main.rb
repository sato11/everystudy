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
    table = NPBStats.parse(html)
    table.each do |player|
      @sheet = Spreadsheet.new(teamname, categoryname)
      @sheet.write(player)
    end
  end
end
