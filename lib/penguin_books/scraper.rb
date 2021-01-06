class PenguinBooks::Scraper

    def self.scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/coming-soon/")) #website
        container = doc.css("ol.awesome-list") #container containing all books
        books = container.css("li.inner-facade") #select all li's that contain individual book info

        books.each do |a|
            author_name = a["author"] #author
            book_title = a["ttl"] #title of book
            book_category = a["cat-data"] #i.e. biography, memoir, fiction, etc
            isbn = a["data-isbn"] #isbn number
            available_as = a["format-data"] #i.e. Paperback,Hardcover,Ebook,Audio
            book_summary = a.css('div.desc').text.strip #book summary
            PenguinBooks::Book.new(author_name, book_title, book_category, isbn, book_summary, available_as)
            
        end
    end
   
end
