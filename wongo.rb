# def get(key)
#
# end

def load()
  raw = File.read("db.db")
  Marshal.load(raw)
end

def save(hash)
  File.open('db.db', 'wb') do |f|
    f.puts(Marshal.dump(hash))
  end
end

def get(entity,username)
  db = load()
  db['users'][username]
end

def saveUser(username, details)
  db = load()
  db['users'][username] = details
  save(db)
end

def deleteUser(username)
  db = load()
  db['users'].delete(username)
  save(db)
end

def getAllUsers()
  load()['users']
end

def migrate
  old_db = load()
  new_db = {
      "users" => old_db,
      "items" => {}
  }
  save(new_db)
end

#db['users']['username']
#db['']