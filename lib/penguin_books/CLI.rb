class PenguinBooks::CLI

    def call
        welcome
        trending_releases
        menu
        goodbye
    end

    def welcome
      puts ""
      puts "Here is what's trending this week!".colorize(:light_green)
      puts ""
    end

    def trending_releases
        #@books = PenguinBooks::Book.all
        PenguinBooks::Scraper.scrape_authors
        PenguinBooks::Book.all.each.with_index(1) do |book, i|
            puts "#{i}. #{book.book_title}".colorize(:blue)
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

      def menu
        input = nil
        while input != "exit"
            puts ""
            puts "Select a book title you'd like to see more about by typing a number.".colorize(:light_green)
            puts ""
            puts "Type menu to see the list again.".colorize(:light_blue)
            puts ""
            puts "Done? Type exit to end the program.".colorize(:light_blue)
            puts ""
          input = gets.strip.downcase
          if input.to_i > 0
            if book = PenguinBooks::Book.find(input.to_i)
                print_book(book)
            end
          elsif input == "menu"
                print_book(book)
          else
            puts "Not sure what you want? Type menu or exit.".colorize(:blue) unless input == "exit"
          end
        end

        def goodbye
            puts "Check back for more books soon!".colorize(:light_green)
          end
      end