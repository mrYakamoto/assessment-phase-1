require_relative 'library'
require_relative 'maintenance'

class MediaKiosk < Library
  include Maintenance

  def initialize(args = {})
    super
  end
end
