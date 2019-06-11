class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
<<<<<<< HEAD
    find_captains ("Catamaran")
  end

  def self.sailors
    find_captains("Sailboat")
  end

  def self.talented_seafarers
    captains_1 = find_captains("Motorboat")
    captains = []
    captains_1.each do |captain|
      captain.boats.each do |b|
        b.classifications.each do |c|
          if c.name == 'Sailboat'
            captains << captain
          end
        end
      end
    end
    captains.uniq
  end

  def self.non_sailors
    sailor_captains = find_captains("Sailboat")
    captains = []
    self.all.each do |c|
      if !sailor_captains.include?(c)
        captains << c
      end
    end
    captains.uniq
  end

  private
  def self.find_captains (boat_type)
=======
>>>>>>> dcb88b831d7c469f1c9f74dc0130c2de99cfeeaf
    captains = []
    self.all.each do |captain|
      captain.boats.each do |b|
        b.classifications.each do |c|
<<<<<<< HEAD
          #binding.pry
          if c.name == boat_type
            #binding.pry
=======
          binding.pry
          if c.name == "Catamaram"
>>>>>>> dcb88b831d7c469f1c9f74dc0130c2de99cfeeaf
            captains << captain
            break
          end
        end
      end
    end
<<<<<<< HEAD
    captains.uniq
=======
    captains
>>>>>>> dcb88b831d7c469f1c9f74dc0130c2de99cfeeaf
  end
end
