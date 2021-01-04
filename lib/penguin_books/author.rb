class PenguinBooks::Author
    attr_accessor :name, :books
    @@all = []
    

    def initialize(name)
        @name = name
        save
    end

    def self.all
        PenguinBooks::Scraper.scrape_authors if @@all.empty?
        @@all 
    end

    def save
        @@all << self
    end

end