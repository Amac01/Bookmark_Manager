require "pg"
class Bookmarks
  def self.see_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    connection.exec "SELECT * FROM bookmarks"
  end
end
