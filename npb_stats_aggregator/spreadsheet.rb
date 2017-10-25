class Spreadsheet
  require 'dotenv'
  require 'forwardable'
  require 'google_drive'

  extend Forwardable
  Dotenv.load!('.env')

  def_delegators :@sheet, :save

  def initialize(team, category)
    @@worksheets ||= worksheets
    @sheet = @@worksheets.find { |ws| ws.title == "#{team}_#{category}" }
  end

  def write(player, row)
    player.each.with_index(1) { |v, column| set_data(v, row, column)  }
  end

  private

  def session
    GoogleDrive::Session.from_config('config.json')
  end

  def worksheets
    session.spreadsheet_by_key(ENV['SPREADSHEET_ID']).worksheets
  end

  def set_data(value, row, column)
    @sheet[row, column] = value
  end
end
