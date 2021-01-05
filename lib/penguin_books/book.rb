class PenguinBooks::Book
    attr_accessor :name, :author_name, :book_title, :book_category, :book_summary
 
    @@all = []
 
    # URL = https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"
 
    def initialize (name=nil)
      @@all << self
    end
 
    def self.all
      @@all
    end
 
    def self.find(id)
      self.all[id-1]
    end
 
    def author_name
        @author_name ||= doc.css("author").text
    end
   
    def book_title
        @book_title ||= doc.css("ttl").text
    end

    def book_category
        @book_category ||= doc.css("cat-data").text
    end

    def book_summary
        @book_summary ||= doc.css("div.desc").text
    end
end