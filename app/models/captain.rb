class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    find_captains ("Catamaran")
  end

  def self.sailors
    find_captains("Sailboat")
  end

  private
  def self.find_captains (boat_type)
    captains = []
    self.all.each do |captain|
      captain.boats.each do |b|
        b.classifications.each do |c|
          #binding.pry
          if c.name == boat_type
            #binding.pry
            captains << captain
            break
          end
        end
      end
    end
    captains.uniq
  end
end
