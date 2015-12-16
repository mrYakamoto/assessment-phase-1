require_relative 'media'

class VideoGame < Media
  attr_reader :console

  def initialize(args = {})
    super
    @console = args.fetch(:console, 'unknown')
  end
end
