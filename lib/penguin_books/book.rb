class PenguinBooks::Book
    attr_accessor :name, :author_name, :book_title, :book_category, :book_review
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"
 
    def initialize (author_name, book_title, book_category, book_review)
        @author_name = author_name
        @book_title = book_title
        @book_category = book_category
        @book_review = book_review
        @@all << self
    end
 
    def self.all
      @@all
    end
 
    def self.find(id)
      self.all[id-1]
    end
    
end