require 'pry'

class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(this_exhibit)
    @exhibits << this_exhibit
  end

  def recommend_exhibits(patron)
    # patron.interests.include?(exhibit)
    @exhibits.find_all do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def find_patrons(exhibit)
    @patrons.find_all |patron|
      if patron.interests.include?(exhibit.name)
  end


  def patrons_by_exhibit_interest
    hash = {}
    @exhibits.each do |exhibit|
      exhibit.find_patrons(exhibit)

      end
      # @patrons.map do |patron|
      #   self.recommend_exhibits(patron)
      #   binding.pry
    end
  end
end
