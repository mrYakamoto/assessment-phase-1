require 'spec_helper'

describe BluRay do
  let(:dvd) { BluRay.new(title: 'Robin Hood: Men in Tights', runtime: 104) }

  it 'has a title' do
    expect(dvd.title).to eq 'Robin Hood: Men in Tights'
  end

  it 'has a runtime' do
    expect(dvd.runtime).to eq 104
  end

  describe 'availability' do
    it 'can be available' do
      expect(dvd).to be_available
    end

    it 'can be checked out' do
      dvd.checkout
      expect(dvd).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      dvd.checkout
      expect(dvd).to_not be_available
    end

    it 'becomes available when returned' do
      dvd.checkout
      expect(dvd).to_not be_available

      dvd.return
      expect(dvd).to be_available
    end
  end
end
