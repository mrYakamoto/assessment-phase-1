class ShippingContainer
  attr_reader :destination, :max_crates, :crates
  attr_accessor :max_weight

  def initialize(args={})
    @destination = args.fetch(:destination, 'unknown')
    @max_weight = args[:max_weight]
    @max_crates = args[:max_crates]
    @crates = args.fetch(:crates, [])
  end

  def current_weight
    crates.inject(0){|sum, crate| sum += crate.weight}
  end

  def crates_count
    crates.count
  end

  def add_crate(crate)
    return false if (current_weight + crate.weight) > max_weight
    return false if crates_count >= max_crates
    crates << crate
    true
  end

end
