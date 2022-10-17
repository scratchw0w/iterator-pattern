class Iterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def first
    @array[0]
  end

  def next
    value = @array[@index]
    @index += 1
    value
  end

  def is_done?
    @index == @array.length - 1
  end

  def current
    @array[@index]
  end

  def has_next?
    @index < @array.length
  end

  def previous
    value = @array[@index]
    @index -= 1
    value
  end

  def has_previous?
    @index > 0
  end

  def rewind
    @index = 0
  end
end

cars = %w(bugatti audi bmw mercedes)
cars_iterator = Iterator.new(cars)

while cars_iterator.has_next?
  puts "Current car is: " + cars_iterator.next
end