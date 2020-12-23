class PenguinBooks::CLI
    def call 
        puts 'Welcome to Penguin Books!'
        author_spotlight
        new_releases
        # popular
        # upcoming_for(preorders)
        # list_authors
    end

    def author_spotlight
        # to be scraped instead
        @authors = ['Sabaa Tahir', 'Ricky Yancey', 'Alison Goodman']
    end

    def new_releases
        # list new books
        @authors.each.with_index(1) do |author, index| 
            puts "#{index}. #{author}"
    end
end

end