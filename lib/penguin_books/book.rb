class PenguinBooks::Book
    attr_accessor :name, :book, :key_info
    @@all = []
    
    def initialize(name, author)
        @name = name
        @author = author
        # notify author about new book
        add_to_author
        save
    end

    def self.all
        @@all
    end

    def add_to_author
        @author.books << self unless @author.books.include?(self)
    end

    def save
        @@all << self
    end
end