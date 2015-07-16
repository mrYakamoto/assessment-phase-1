class Crate
  attr_reader :weight
  def initialize(args={})
    @weight = weight.fetch(:weight, 0)
  end
end
