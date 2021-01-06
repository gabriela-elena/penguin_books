class PenguinBooks::Scraper

    def self.scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/coming-soon/"))
        container = doc.css("ol.awesome-list") #grab the container containing all books
        books = container.css("li.inner-facade") # select all li's that contain individual book info

        books.each do |a|
            #binding.pry
            author_name = a["author"]
            book_title = a["ttl"]
            book_category = a["cat-data"]
            isbn = a["data-isbn"]
            available_as = a["format-data"] #Paperback,Hardcover,Ebook,Audio
            book_summary = a.css('div.desc').text.strip
            # name = a.text
            #binding.pry
            PenguinBooks::Book.new(author_name, book_title, book_category, isbn, book_summary, available_as)
            
        end
    end
   
end
