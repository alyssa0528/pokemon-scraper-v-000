class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_value, db)
    found_pokemon = db.execute("SELECT name, type FROM pokemon WHERE id = ?", id_value)
    self.new(id: found_pokemon[0], name: found_pokemon[1], type: found_pokemon[2], db: db)
    binding.pry
    self
  end
end
