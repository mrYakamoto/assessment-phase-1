class DVD
  attr_reader :runtime, :title

  def initialize(args ={})
    @runtime = args[:runtime]
    @title   = args[:title]
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
