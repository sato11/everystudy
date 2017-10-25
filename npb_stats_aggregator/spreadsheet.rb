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

  def set_data(stats)
    stats.each.with_index(2) do |player, row|
      player.each.with_index(1) do |v, column|
        set_cell(v, row, column)
      end
    end
  end

  private

  def session
    GoogleDrive::Session.from_config('config.json')
  end

  def worksheets
    session.spreadsheet_by_key(ENV['SPREADSHEET_ID']).worksheets
  end

  def set_cell(value, row, column)
    @sheet[row, column] = value
  end
end
