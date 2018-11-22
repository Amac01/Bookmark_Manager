require "pg"

def setup_database
  p "Setting up test database..."
  connection = PG.connect :dbname => 'bookmark_manager_test'
  connection.exec("TRUNCATE bookmarks;")
end

def add_bookmarks
  connection = PG.connect dbname: 'bookmark_manager_test'
  connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers')"
  connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google')"
  connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'DAS')"
end
