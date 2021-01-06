class PenguinBooks::Book
    attr_accessor :name, :author_name, :book_title, :book_category, :book_summary
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"
 
    def initialize (author_name, book_title, book_category, book_summary)
        @author_name = author_name
        @book_title = book_title
        @book_category = book_category
        @book_summary = book_summary
        @@all << self
    end
 
    def self.all
      @@all
    end
 
    def self.find(id)
      self.all[id-1]
    end
 
    
end