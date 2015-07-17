class Playlist
  attr_accessor :name, :description
  attr_reader :songs, :user

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:description)
    @songs = []

    self.user = args.fetch(:user)
  end

  def add_song(song)
    songs << song
  end

  def user=(user)
    @user = user
    user.add_playlist(self)
  end
end