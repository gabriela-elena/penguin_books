class PenguinBooks::Book
<<<<<<< HEAD
    attr_accessor :author_name, :book_title, :book_category, :book_summary, :available_as, :isbn
=======
    attr_accessor :author_name, :book_title, :book_category, :book_summary, :isbn, :available_as
>>>>>>> 7fd0ed918f5e64dd576110bd5f768d8f8385c322
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/coming-soon"
 
<<<<<<< HEAD
    def initialize (author_name, book_title, book_category, book_summary, available_as, isbn)
=======
    def initialize (author_name, book_title, book_category, isbn, book_summary, available_as)
>>>>>>> 7fd0ed918f5e64dd576110bd5f768d8f8385c322
        @author_name = author_name
        @book_title = book_title
        @book_category = book_category
        @isbn = isbn
        @available_as = available_as
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