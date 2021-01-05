
class PenguinBooks::Scraper
    def self.scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/trending-this-week/"))
        container = doc.css("ol.awesome-list") #grab the container containing all books
        books = container.css('li.inner-facade') # select all li's that contain individual book info
        #or authorsq = doc.css("class#inner-facade")?
        books.each do |a|
            binding.pry
            author_name = a["author"]
            book_title = a["ttl"]
            book_category = a["cat-data"]
            book_summary = a.css('div.desc').text.strip
            # name = a.text
            PenguinBooks::Author.new(name)
        end
    end
    
    def self.scrape_author(book)
        PenguinBooks::Book.new("newest books", author)
        PenguinBooks::Book.new("previous book", author)
    end
  
end


