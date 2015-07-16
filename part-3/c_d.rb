class CD
  attr_reader :runtime, :title, :artist

  def initialize(args)
    @runtime = args[:runtime]
    @title   = args[:title]
    @artist  = args[:artist]
  end

  def available?
    !checked_out?
  end

  def checkout
    @checked_out = true
  end

  def checked_out?
    @checked_out
  end

  def return
    @checked_out = false
  end
end
