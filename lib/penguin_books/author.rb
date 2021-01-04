class PenguinBooks::Author
    attr_accessor :name, :book
    #attr_writer :book

    @@all = []
    

    def initialize(name)
        @name = name
        @books = []
        save
    end

    def self.all
        PenguinBooks::Scraper.scrape_authors if @@all.empty?
        @@all 
    end

    def get_books
        PenguinBooks::Scraper.scrape_books(self) if @books.empty?
    end

    def save
        @@all << self
    end

end