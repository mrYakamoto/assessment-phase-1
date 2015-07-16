require 'spec_helper'

describe VideoGame do
  let(:video_game) { VideoGame.new(title: 'Robin Hood: Defender of the Crown', console: 'Xbox') }

  it 'has a title' do
    expect(video_game.title).to eq 'Robin Hood: Defender of the Crown'
  end

  it 'is for a particular console' do
    expect(video_game.console).to eq 'Xbox'
  end

  describe 'availability' do
    it 'can be available' do
      expect(video_game).to be_available
    end

    it 'can be checked out' do
      video_game.checkout
      expect(video_game).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      video_game.checkout
      expect(video_game).to_not be_available
    end

    it 'becomes available when returned' do
      video_game.checkout
      expect(video_game).to_not be_available

      video_game.return
      expect(video_game).to be_available
    end
  end
end
