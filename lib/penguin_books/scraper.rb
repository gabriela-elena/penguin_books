class PenguinBooks::Scraper

<<<<<<< HEAD
    def self.scrape_books
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/coming-soon/"))
        container = doc.css("ol.awesome-list") #container containing all books
        books = container.css("li.inner-facade") # select all li's that contain individual book info
=======
    def self.scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/coming-soon/")) #website
        container = doc.css("ol.awesome-list") #container containing all books
        books = container.css("li.inner-facade") #select all li's that contain individual book info
>>>>>>> 7fd0ed918f5e64dd576110bd5f768d8f8385c322

        books.each do |a|
            author_name = a["author"] #author
            book_title = a["ttl"] #title of book
<<<<<<< HEAD
            book_category = a["cat-data"] #i.e biography, fiction, etc
            book_summary = a.css("div.desc").text.strip #book summary text
            available_as = a["format-data"] #i.e Paperback, Hardcover, Ebook, or audio book
            isbn = a["data-isbn"] #isbn number

            PenguinBooks::Book.new(author_name, book_title, book_category, book_summary, available_as, isbn)
=======
            book_category = a["cat-data"] #i.e. biography, memoir, fiction, etc
            isbn = a["data-isbn"] #isbn number
            available_as = a["format-data"] #i.e. Paperback,Hardcover,Ebook,Audio
            book_summary = a.css('div.desc').text.strip #book summary
            PenguinBooks::Book.new(author_name, book_title, book_category, isbn, book_summary, available_as)
>>>>>>> 7fd0ed918f5e64dd576110bd5f768d8f8385c322
            
        end
    end
   
end
