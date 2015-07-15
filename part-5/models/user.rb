class User

  attr_accessor :first_name, :last_name
  attr_reader :playlists, :created_playlists

  def initialize(args = {})
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @playlists = []
    @created_playlists = []
  end

  def add_playlist(playlist)
    playlists << playlist
    playlist.add_user(self)
  end

  def add_created_playlist(created_playlist)
    created_playlists << created_playlist
  end


end