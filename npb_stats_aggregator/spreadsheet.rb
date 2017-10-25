class Spreadsheet
  require 'dotenv'
  require 'google_drive'

  Dotenv.load!('.env')

  def initialize(team, category)
    @sheet = worksheet(team, category)
    raise 'sheet not found' if @sheet.nil?
    @row_index = @sheet.rows.dup.length + 1
  end

  def write(player)
    player.each.with_index(1) { |v, column_index| set_data(v, @row_index, column_index)  }
    @sheet.save
  end

  private

  def worksheet(team, category)
    sheet_title = "#{team}_#{category}"
    worksheets.select { |ws| ws.title == sheet_title }.first
  end

  def worksheets
    session = GoogleDrive::Session.from_config('config.json')
    session.spreadsheet_by_key(ENV['SPREADSHEET_ID']).worksheets
  end

  def set_data(value, row, column)
    @sheet[row, column] = value
  end
end
