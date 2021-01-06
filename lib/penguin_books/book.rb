class PenguinBooks::Book
    attr_accessor :name, :author_name, :book_title, :book_category, :book_summary, :isbn, :available_as
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/womens-fiction-coming-soon/"
 
    def initialize (author_name, book_title, book_category, isbn, book_summary, available_as)
        @author_name = author_name
        @book_title = book_title
        @book_category = book_category
        @isbn = isbn
        @available_as = available_as
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