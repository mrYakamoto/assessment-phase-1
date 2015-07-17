class Song
  attr_accessor :title, :length
  attr_reader :genres, :playlists, :artist

  def initialize(args = {})
    @title = args.fetch(:title)
    @length = args.fetch(:length)

    @playlists = []
    @genres = []

    self.artist = args.fetch(:artist)
  end

  def add_playlist(playlist)
    playlists << playlist
    playlist.add_song(self)
  end

  def add_genre(genre)
    genres << genre
    genre.add_song(self)
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

end