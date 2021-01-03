class PenguinBooks::CLI
    attr_accessor :author, :book

    def call 
        puts "Welcome to Penguin Books!"
        author_spotlight
        new_releases
        book_authors
        # upcoming_for(preorders)
        # list_authors
    end

    def author_spotlight
        # to be scraped instead
        @authors = ['Sabaa Tahir', 'Ricky Yancey', 'Alison Goodman']
        authors.save
    end

    def new_releases
        puts 'Choose a book to view more.'
        # list new books
        @authors.each.with_index(1) do |author, index| 
            puts "#{index}. #{author}"
    end

    def book_authors
        chosen_authors = gets.strip.
        show_authors_for(chosen_author) if valid_input(chosen_author, @authors)
        end
        #if valid_input(chosen_authors.to_i, @authors)
    end

    def valid_input(input, data)
        input.to_i <= @data.length && input.to_i > 0
    end

    def show_authors_for(chosen_authors)
        author = @authors[chosen_author - 1]
        puts "Here are the books for #{author}"
        binding.pry
    end

end