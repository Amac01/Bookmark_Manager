require 'bookmark'

describe Bookmarks do

  let(:bookmarks) { Bookmarks.new }

  it "list's the bookmarks on the /bookmark route" do
    expect(bookmarks.all).to eq('http://makers.tech, http://www.destroyallsoftware.com, http://www.google.com')
  end

  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmarks.new.all

      expect(bookmarks).to include "http://makers.tech"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end

end
