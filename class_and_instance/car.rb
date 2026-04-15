class Car
  attr_reader :brand, :horsepower
  attr_accessor :color

  # accessor is short for these two
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

  # REPLACED BY attr_reader
  # def brand
  #   @brand
  # end

  # def color
  #   @color
  # end

  def start_engine
    # Instance method have access to private methods
    start_fuel_pump
    init_spark_plug
  end

  private
  # Everything underneath this is not accessible from outside of the instance (e.g. interface.rb)

  def start_fuel_pump
    puts 'Putting fuel into the cylinders'
  end

  def init_spark_plug
    puts 'Spark!!!'
  end
end
