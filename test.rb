class Test
  # attr_accessor :array

  def initialize
    @array = []
  end

  def append_array(element)
    @array << element
  end
end


new_test = Test.new

new_test.append_array(5)

name = new_test.array

puts name
