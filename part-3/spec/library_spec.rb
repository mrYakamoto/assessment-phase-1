require 'spec_helper'

describe Library do
  let(:book) { Book.new }
  let(:cd) { CD.new }

  let(:library) { Library.new(name: 'PS 42 Robin Hood Foundation Library', location: 'Arverne, New York', items: [book, cd]) }

  it 'has a name' do
    expect(library.name).to eq 'PS 42 Robin Hood Foundation Library'
  end

  it 'has a location' do
    expect(library.location).to eq 'Arverne, New York'
  end

  describe 'items' do
    it 'has items' do
      expect(library.items).to match_array [book, cd]
    end

    it 'can add an items' do
      new_book = Book.new
      library.add_item(new_book)
      expect(library.items).to include new_book
    end

    it 'can remove an item' do
      expect(library.items).to include book
      library.remove_item(book)
      expect(library.items).to_not include book
    end

    it 'has available items' do
      allow(cd).to receive(:available?).and_return false

      expect(library.available_items).to match_array [book]
    end

    it 'checked_out_items' do
      allow(cd).to receive(:available?).and_return false

      expect(library.checked_out_items).to match_array [cd]
    end
  end
end
