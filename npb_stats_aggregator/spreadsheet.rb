class Spreadsheet
  require 'dotenv'
  require 'google_drive'

  Dotenv.load!('.env')

  def initialize(team, category)
    @sheet = worksheet(team, category)
    raise 'sheet not found' if @sheet.nil?
  end

  def write(player)
    row_index = rows.length + 1
    player.each.with_index(1) { |v, column_index| set_data(v, row_index, column_index)  }
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

  def rows
    @sheet.rows.dup
  end

  def set_data(value, row_index, column_index)
    @sheet[row_index, column_index] = value
  end
end
