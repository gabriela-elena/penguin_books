class PenguinBooks::CLI

    def call
        welcome
        trending_releases
        list
        goodbye
    end

    def welcome
      puts ""
      puts "Here is what's trending this week!"
      puts ""
    end

    def trending_releases
        #@books = PenguinBooks::Book.all
        PenguinBooks::Scraper.scrape_authors
        PenguinBooks::Book.all.each.with_index(1) do |book, i|
            puts "#{i}. #{book.name}"
          end
        end
        puts ""
      end

      def print_book(book)
        puts ""
        puts book.book_title
        puts ""
        puts book.author_name
        puts ""
        puts book.cat_data
        puts ""
        puts book.book_summary
        puts ""
      end

      def list
        input = nil
        while input != "exit"
            puts ""
            puts "Select a random book you'd like to see more about by typing a number between 1-5."
            puts ""
            puts "Type list to see the list of books again, or type exit to end the program."
            puts ""
          input = gets.strip.downcase
          if input.to_i > 0
            if book = PenguinBooks::Book.find(input.to_i)
                print_book(book)
            end
          elsif input == "list"
            print_book
          else
            puts "Not sure what you want? Type menu or exit." unless input == "exit"
          end
        end

        def goodbye
            puts "Check back Soon!"
          end
      end