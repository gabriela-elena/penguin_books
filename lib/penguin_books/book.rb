class PenguinBooks::Book
    attr_accessor :author_name, :book_title, :book_category, :book_summary, :available_as, :isbn
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"
 
    def initialize (author_name, book_title, book_category, book_summary, available_as, isbn)
        @author_name = author_name
        @book_title = book_title
        @book_category = book_category
        @book_summary = book_summary
        @available_as = available_as
        @isbn = isbn
        @@all << self #new object
    end
 
    def self.all
      @@all
    end
 
    def self.find(id)
      self.all[id-1]
    end
 
    
end