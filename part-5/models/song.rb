class Song
  attr_accessor :title, :length
  attr_reader :playlists

  def initialize(args = {})
    @title = args.fetch(:title)
    @length = args.fetch(:length)

    @playlists = []
  end

  def add_playlist(playlist)
    playlists << playlist
    playlist.add_song(self)
  end

end