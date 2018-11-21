
class Bookmarks
    attr_reader :bookmarks
  def initialize
    @bookmarks = ['http://makers.tech', 'http://www.destroyallsoftware.com', 'http://www.google.com']
  end

  def all
    @bookmarks.join(', ')
  end

end
