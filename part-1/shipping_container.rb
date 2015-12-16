class ShippingContainer
  attr_reader :destination, :max_crates, :crates
  attr_accessor :max_weight

  def initialize(args={})
    @destination = args[:destination]
    @max_weight = args[:max_weight]
    @max_crates = args[:max_crates]
    @crates = args.fetch(:crates, [])

  end

  def current_weight
    total_weight = 0
    crates.each { |crate| total_weight += crate.weight }
    total_weight
  end

  def crates_count
    crates.count
  end

  def add_crate(crate)
    return false if (current_weight + crate.weight) > max_weight
    return false if crates_count == max_crates
    crates << crate
    true
  end

end
