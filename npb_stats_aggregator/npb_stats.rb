class NPBStats
  require 'nokogiri'

  TEAMS = {
    c: 'CARP', g: 'GIANTS', db: 'BAYSTARS', t: 'TIGERS', s: 'SWALLOWS', d: 'DRAGONS',
    f: 'FIGHTERS', h: 'HAWKS', m: 'MARINES', l: 'LIONS', e: 'EAGLES', bs: 'BUFFALOS',
  }

  CATEGORIES = {
    b: 'BATTING', p: 'PITCHING',
  }

  def self.parse(html) # returns two-dimensional array
    data = []
    page = Nokogiri::HTML.parse(html)
    page.search('tr.ststats').each do |tr|
      row = tr.search('td').map(&:text).to_a
      row.reject! { |td| td.empty? || td == '*' || td == '+' || td =~ /^\.\d{1}$/ }
      data << row
    end
    data
  end
end
