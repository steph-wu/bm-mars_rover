class Rover

  attr_accessor :x, :y, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

# Takes instructions, breaks characters into an array,
# iterates through instructions and invokes
# corresponding method

  def read_instruction(input)

    instruction = input.scan /\w/
    instruction.each do |step|
      if step == 'L'
        turn_left
      elsif step == 'R'
        turn_right
      else
        move
      end
    end

  end

# 'Moves' rover's x and y coordinates relative to its
# current coordinates and direction

  def move

    case
    when @direction == 'N'
      @y += 1
    when @direction == 'E'
      @x += 1
    when @direction == 'S'
      @y -= 1
    when @direction == 'W'
      @x -= 1
    end

  end

# Changes direction of rover when turning left

  def turn_left

    case
    when @direction == 'N'
      @direction = 'W'
    when @direction == 'E'
      @direction = 'N'
    when @direction == 'S'
      @direction = 'E'
    when @direction == 'W'
      @direction = 'S'
    end

  end

# Changes direction of rover when turning right

  def turn_right

    case
    when @direction == 'N'
      @direction = 'E'
    when @direction == 'E'
      @direction = 'S'
    when @direction == 'S'
      @direction = 'W'
    when @direction == 'W'
      @direction = 'N'
    end

  end

end

################################################

# Starting coordinates and directions for rover 1

p "Enter rover's starting coordinates"
coordinates = gets.chomp
start = coordinates.split(" ").map(&:strip)

mars_Rover = Rover.new(start[0].to_i, start[1].to_i, start[2])

p "Enter directions"
directions = gets.chomp
mars_Rover.read_instruction(directions)

# Starting coordinates and directions for rover 2

p "Enter rover's starting coordinates"
coordinates = gets.chomp
start = coordinates.split(" ").map(&:strip)

mars_Rover2 = Rover.new(start[0].to_i, start[1].to_i, start[2])

p "Enter directions"
directions = gets.chomp
mars_Rover2.read_instruction(directions)
