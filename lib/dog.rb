class Dog
attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  end
  def self.all
		@@all.each do |dog|
			puts dog.name
		end
	end

  def self.print_all
     self.all.each{|dog| puts "#{@name}"}
  end

  def self.clear_all
    @@all = []
  end
  def save(name)
   dog = self.new
   dog.name = name
  @@all<< self.new

  end
end
