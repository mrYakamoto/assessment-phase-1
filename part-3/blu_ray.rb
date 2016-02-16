require_relative 'media'

class BluRay < Media
  attr_reader :runtime

  def initialize(args = {})
    super
    @runtime = args.fetch(:runtime, 'unknown')
  end
end
