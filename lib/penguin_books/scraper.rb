class PenguinBooks::scraper
    def scrape_authors
        doc = Nokogiri::HTML(open("https://www.penguin.com/meet/browse/14/authors-a-z?pgPage=2"))
        binding.pry
    end
end
