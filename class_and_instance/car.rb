class Car
  attr_reader :brand, :horsepower
  attr_accessor :color

  # attr_reader :color
  # attr_writer :color

  def initialize(color, horsepower, brand)
    @color = color
    @horsepower = horsepower
    @brand = brand
  end

  def brand_upcased
    # You can access instance variables but not variables in
    # other instance methods. @brand != brand
    @brand.upcase
  end

  def paint(color)
    @color = color
  end

  # def brand
  #   @brand
  # end

  # def color
  #   @color
  # end

  def start_engine
    start_fuel_pump
    init_spark_plug
  end

  private

  def start_fuel_pump
    puts "Putting fuel into the cylinders"
  end

  def init_spark_plug
    puts "Spark!!!"
  end
end
