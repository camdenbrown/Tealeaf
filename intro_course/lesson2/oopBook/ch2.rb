class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_mph = 0
  end

  def speed_up(number)
    puts "I want to go fast!"
    @current_mph += number
  end

  def current_speed
    puts "Your current speed is #{@current_mph}"
  end

  def brake(number)
    puts "Slowing down by #{number} mph."
    @current_mph -= number
  end

  def shut_off
    @current_mph = 0
    puts "The car is now shut off."
  end

  def spray_paint(color)
    self.color = color
    puts "Now your car is #{color}"
  end
end

lexus = MyCar.new(2015, 'black', 'zerksis')
puts lexus.color
lexus.speed_up(100)
lexus.spray_paint('red')
lexus.current_speed
lexus.brake(10)
lexus.current_speed
lexus.shut_off
