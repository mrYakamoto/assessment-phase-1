class Library
  attr_reader :name, :location, :items
  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @items = args[:items]
  end

  def add_item(item)
    items << item
  end

  def remove_item(item)
    items.delete(item)
  end

  def available_items
    items.select(&:available?)
  end

  def checked_out_items
    items.reject(&:available?)
  end
end
