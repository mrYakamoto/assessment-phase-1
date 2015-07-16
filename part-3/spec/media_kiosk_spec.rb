require 'spec_helper'

describe MediaKiosk do
  let(:video_game) { VideoGame.new }
  let(:dvd) { DVD.new }
  let(:blu_ray) { BluRay.new }

  let(:media_kiosk) { MediaKiosk.new(name: 'ReddishBox', location: 'Sherwood Forest', items: [video_game, dvd, blu_ray]) }

  it 'has a name' do
    expect(media_kiosk.name).to eq 'ReddishBox'
  end

  it 'has a location' do
    expect(media_kiosk.location).to eq 'Sherwood Forest'
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(media_kiosk).to_not be_damaged
    end

    it "can be damaged" do
      media_kiosk.record_damage
      expect(media_kiosk).to be_damaged
    end

    it "can be repaired" do
      media_kiosk.record_damage
      expect(media_kiosk).to be_damaged

      media_kiosk.repair
      expect(media_kiosk).to_not be_damaged
    end
  end

  describe 'items' do
    it 'has items' do
      expect(media_kiosk.items).to match_array [video_game, dvd, blu_ray]
    end

    it 'can add an items' do
      new_video_game = VideoGame.new
      media_kiosk.add_item(new_video_game)
      expect(media_kiosk.items).to include new_video_game
    end

    it 'can remove an item' do
      expect(media_kiosk.items).to include video_game
      media_kiosk.remove_item(video_game)
      expect(media_kiosk.items).to_not include video_game
    end

    it 'has available items' do
      allow(dvd).to receive(:available?).and_return false

      expect(media_kiosk.available_items).to match_array [video_game, blu_ray]
    end

    it 'has checked_out_items' do
      allow(dvd).to receive(:available?).and_return false

      expect(media_kiosk.checked_out_items).to match_array [dvd]
    end
  end
end
