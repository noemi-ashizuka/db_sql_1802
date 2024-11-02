require "sqlite3"
DB = SQLite3::Database.new("data/exploitable.sqlite")
DB.results_as_hash = true

def login(username, password)
  query = <<~SQL
    SELECT * 
    FROM users
    WHERE username = ?
    AND password = ?
  SQL
  puts query + "\n"
  results = DB.execute(query, username, password)
  
  p results[0]
  if results.any?
    puts "Welcome #{username}!\n\n"
  else
    puts "Username or password incorrect...\n\n"
  end
end

# login("john", "passw0rd")
# login("john", "iforgot")
login("john", "' OR true --")
