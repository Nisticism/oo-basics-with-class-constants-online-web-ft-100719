class Shoe
  attr_accessor :color, :size, :material, :condition, :brand
  #attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    if BRANDS.find(brand) == false 
      BRANDS << brand 
    end
  end

end