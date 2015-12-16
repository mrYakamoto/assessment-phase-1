require_relative 'media'

class CD < Media
  attr_reader :runtime, :artist

  def initialize(args ={})
    super
    @runtime = args.fetch(:runtime, 'unknown')
    @artist  = args.fetch(:artist, 'unknown')
  end
end
