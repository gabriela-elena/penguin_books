class PenguinBooks::Scraper
    def self.scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"))
        
        authors = doc.css("class#inner-facade no-bg-el")
        #or authors = doc.css("class#inner-facade")?

        authors.each do |a|
            name = a.text
            PenguinBooks::Author.new(name)
        end
    end
    def self.scrape_author(book)
        PenguinBooks::Book.new("newest book", author)
        PenguinBooks::Book.new("previous book", author)
    end
end