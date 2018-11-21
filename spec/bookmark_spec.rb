require 'bookmark'

describe Bookmarks do
  let(:bookmarks) { Bookmarks.new }
  it "list's the bookmarks on the /bookmark route" do
    expect(bookmarks.contents).to eq ['http://makers.tech', 'http://www.destroyallsoftware.com', 'http://www.google.com']
  end

end
