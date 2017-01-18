class Rover

  attr_accessor :x, :y, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def instruction
  end

  def move
  end

  def turn(new_direction)

      case
        when @direction == 'N'
          if new_direction == 'L'
            @direction = 'W'
          else
            @direction = 'E'
          end
        when @direction == 'E'
          if new_direction == 'L'
            @direction = 'N'
          else
            @direction = 'S'
          end
        when @direction == 'S'
          if new_direction == 'L'
            @direction = 'E'
          else
            @direction = 'W'
          end
        when @direction == 'W'
          if new_direction == 'L'
            @direction = 'S'
          else
            @direction = 'S'
          end
      end

  end

end

test = Rover.new(0,0,'N')

test.turn('R')
puts test.direction

test.turn('L')
puts test.direction

test.turn('L')
puts test.direction


# N = y + 1
# E = x + 1
# S = y - 1
# W = x - 1
