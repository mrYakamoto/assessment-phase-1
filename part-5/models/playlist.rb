class Playlist
  attr_accessor :name, :description
  attr_reader :playlists

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:description)
    @songs = []
    @users = []

    self.creator = args.fetch(:creator)
    self.category = args.fetch(:category)
  end

  def add_song(song)
    songs << song
  end

  def add_user(user)
    users << user
  end

  def creator=(creator)
    @creator = creator
    creator.add_created_playlist(self)
  end

  def category=(category)
    @category = category
    category.add_playlist(self)
  end
end