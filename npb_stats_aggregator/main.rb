require 'net/http'
require './npb_stats'
require './spreadsheet'

target_host = 'npb.jp'
http = Net::HTTP.new(target_host, 80)

NPBStats::TEAMS.each do |team, teamname|
  NPBStats::CATEGORIES.each do |category, categoryname|
    req = Net::HTTP::Get.new("/bis/2017/stats/id#{category}1_#{team}.html")
    res = http.request(req)
    stats = NPBStats.parse(res.body)
    @sheet = Spreadsheet.new(teamname, categoryname)
    @sheet.set_data(stats)
    @sheet.save
  end
end
