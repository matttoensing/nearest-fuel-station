class Route
  attr_reader :distance, :time, :directions

  def initialize(info)
    @distance = info[:distance]
    @time = info[:formattedTime]
    @directions = info[:legs][0][:maneuvers]
  end
end
