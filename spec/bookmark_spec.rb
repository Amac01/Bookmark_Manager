require "bookmark"

describe Bookmarks do
  before(:each) do
  add_bookmarks
  end
  it "returns makers academy when see_list is called" do
    bookmarks = Bookmarks.see_list
    expect(bookmarks[0].url).to eq "http://www.makersacademy.com"
  end
  it "returns makers.tech when see_list is called" do
    bookmarks = Bookmarks.see_list
    expect(bookmarks[1].url).to eq "http://www.google.com"
  end
  it "returns makers.tech when see_list is called" do
    bookmarks = Bookmarks.see_list
    expect(bookmarks[2].url).to eq "http://www.destroyallsoftware.com"
  end
end
