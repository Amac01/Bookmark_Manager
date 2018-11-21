require 'pg'

puts 'version of libpg: ' + PG.library_version.to_s

connection = PG.connect :dbname => 'bookmark_manager'
result = connection.exec 'SELECT * FROM bookmarks'
result.each do |row|
  puts "#{row['id']} and #{row['url']}"
end

result.clear if result
connection.close if connection
