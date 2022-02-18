require 'bookmarks'
require 'pg'

describe Bookmark do
  describe '.all' do
    it "returns all bookmarks" do
      # connection = PG.connect(dbname: 'bookmark_manager_test')

      # #Add test data 

      Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers')
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'destroyallsoftware')
      Bookmark.create(url: "http://www.google.com", title: 'google')

      bookmarks = Bookmark.all

   
      expect(bookmarks).to include("Makers")
      expect(bookmarks).to include("destroyallsoftware")
      expect(bookmarks).to include("google")  

    end
  end

  describe '.create' do
    it 'Adds new bookmarks' do
      Bookmark.create(url: 'http://www.example.org', title: 'example' ).first

      expect(bookmark['url']).to eq 'http://www.example.org'
      expect(bookmark['title']).to eq 'example'
     
    end
  end
end
