require 'spec_helper'

describe Book do
  let(:book) { Book.new(title: 'The Merry Adventures of Robin Hood of Great Renown in Nottinghamshire', length: 192, author: "Howard Pyle") }

  it 'has a title' do
    expect(book.title).to eq 'The Merry Adventures of Robin Hood of Great Renown in Nottinghamshire'
  end

  it 'has a length' do
    expect(book.length).to eq 192
  end

  it 'has an author' do
    expect(book.author).to eq "Howard Pyle"
  end

  describe 'availability' do
    it 'can be available' do
      expect(book).to be_available
    end

    it 'can be checked out' do
      book.checkout
      expect(book).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      book.checkout
      expect(book).to_not be_available
    end

    it 'becomes available when returned' do
      book.checkout
      expect(book).to_not be_available

      book.return
      expect(book).to be_available
    end
  end
end
