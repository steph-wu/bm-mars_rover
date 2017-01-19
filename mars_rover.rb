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
