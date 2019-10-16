class Employer

  # @@all = []

  def initialize(input)
    # binding.pry
    @name = input["name"]
    @title = input["title"]
    @salary = input["salary"]
    @sick_leave = input["sick_leave"]
    @id = input["id"]
    # @@all << self
  end

  #READ
  def self.all
    # @@all
    sql = "SELECT * FROM employers"
    employers = DB[:conn].execute(sql)
    employers.map do |employer|
      Employer.new(employer)
    end
  end

  #CREATE
  def self.create_table
    DB[:conn].execute("CREATE TABLE employers(id INTEGER PRIMARY KEY, name TEXT, salary INTEGER, title TEXT, sick_leave INTEGER)")
  end

  #CREATE
  def self.populate(name, salary, title, sick_leave)
    sql = "INSERT INTO employers(name, title, salary, sick_leave) VALUES(?,?,?,?)"
    DB[:conn].execute(sql , name, title, salary, sick_leave)
  end


  #READ
  def self.find_by_id(id)
    sql = "SELECT * FROM employers WHERE id = ?"
    employer_hash = DB[:conn].execute(sql , id)[0]
    binding.pry
    Employer.new(employer_hash)
  end

  #UPDATE
  def self.update_name(id, value)
    sql = "UPDATE employers SET name = ? WHERE id = ?"
    DB[:conn].execute(sql,value,id)
    employer_hash = find_by_id(id)
    Employer.new(employer_hash)
  end

  #DELETE


  #DELETE
  def self.drop
    DB[:conn].execute("DROP TABLE employers")
  end

end
