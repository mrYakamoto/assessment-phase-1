require_relative 'media'

class Book < Media
  attr_reader :length, :author

  def initialize(args = {})
    super
    @length = args.fetch(:length, 'unknown')
    @author = args.fetch(:author, 'unknown')
  end
end
