db = Hash.new("db")

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

def getUser(username)
  db = load()
  db[username]
end

def saveUser(username, details)
  db = load()
  db[username] = details
  save(db)
end

def deleteUser(username)
  db = load()
  db.delete(username)
  save(db)
end

def getAllUsers()
  load()
end