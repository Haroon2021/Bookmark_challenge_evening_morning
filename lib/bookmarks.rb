require 'pg'
class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end


# [
#   "http://www.makersacademy.com",
#   "http://www.destroyallsoftware.com",
#   "http://www.google.com"
#  ]