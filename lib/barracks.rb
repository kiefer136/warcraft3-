class Barracks
  attr_accessor :gold, :food, :train_footman


  def initialize 
    @gold = 1000
    @food = 80
  end


  def train_footman
    if can_train_footman?  
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5 
      Peasant.new
    end
  end


  def can_train_footman?
    food > 2 && gold > 134
  end

  def can_train_peasant?
    food > 5 && gold > 89
  end
end