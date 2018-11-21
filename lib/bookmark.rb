require "pg"
class Bookmarks
  def self.see_list
    connection = PG.connect :dbname => 'bookmark_manager'
    connection.exec "SELECT * FROM bookmarks"
  end
end
