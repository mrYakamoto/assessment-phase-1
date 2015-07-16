class Genre

  attr_accessor :name, :description
  attr_reader :playlists

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:descriptions)
    @playlists = []
  end

  def add_playlist(playlist)
    playlists << playlist
  end
end
