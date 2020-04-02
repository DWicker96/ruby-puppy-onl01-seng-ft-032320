class Dog
attr_accessor :name
  @@all = []
  def save
   @@all <<self
  end
  def initialize(name)
    @name = name
    save
  end
  def self.all
		@@all.each do |dog|
			puts dog.name
		end
	end

  def self.print_all
     self.all.each{|dog| puts "#{dog.name}"}
  end

  def self.clear_all
    @@all = []
  end
  
end
