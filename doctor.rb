require 'sqlite3'
DB = SQLite3::Database.new("data/patients_doctors.sqlite")

class Doctor
 
  def initialize(attributes = {})
    @id = attributes[:id] || attributes["id"]
    @first_name = attributes[:first_name] || attributes["first_name"]
    @last_name = attributes[:last_name] || attributes["last_name"]
    @age = attributes[:age] || attributes["age"]
    @specialty = attributes[:specialty]   || attributes["specialty"]
  end

  def self.all
    DB.results_as_hash = true
    results = DB.execute("SELECT * FROM doctors;")
    # p results
    results.map do |doctor_hash|
      Doctor.new(doctor_hash)
    end

  end

end

# @repository.all
p Doctor.all