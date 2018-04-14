class Pokemon
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    database_connection.execute("INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)", name, type, db)
  end
end
