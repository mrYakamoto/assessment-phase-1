require_relative 'media'

class DVD < Media
  attr_reader :runtime

  def initialize(args ={})
    super
    @runtime = args.fetch(:runtime, 'unknown')
  end
end
