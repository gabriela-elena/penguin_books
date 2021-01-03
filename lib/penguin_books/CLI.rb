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
        @authors = PenguinBooks::Author.all
    end

    def new_releases
        puts 'Choose an author to view more.'
        # list new books
        @authors.each.with_index(1) do |author, index| 
            puts "#{index}. #{author}"
    end
end

    def book_authors
        chosen_author = gets.strip.to_i
        show_authors_for(chosen_author) if valid_input(chosen_author, @authors)
        end
        #if valid_input(chosen_authors.to_i, @authors)

    def valid_input(input, data)
        input.to_i <= @data.length && input.to_i > 0
    end

    def show_authors_for(chosen_author)
        author = @authors[chosen_author - 1]
        puts "Here are the books for #{author}"
        ##To implement
        #PenguinBooks::book_authors.all.each.with_index(1) do | author |
        #   puts book.name
        #end
        #get_books_authors
    end
end