class Student
  # obj.method
  attr_reader :name, :height
  attr_accessor :missing_hws

  def initialize(name, height)
    @name = name
    @height = height
    @missing_hws = 0
  end

  def play_ping_pong!
    self.missing_hws += 1
  end
end

rickard = Student.new("Rickard", "Taller than Brit")
rickard.play_ping_pong!
rickard.play_ping_pong!

puts rickard.missing_hws
