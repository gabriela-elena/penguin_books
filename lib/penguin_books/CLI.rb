class PenguinBooks::CLI

  def call
      welcome
      trending_releases
      menu
      goodbye
  end

  def welcome
    puts ""
    puts "----------------------------------------"
    puts "HERE IS WHAT IS TRENDING THIS WEEK!".colorize(:light_green)
    puts "----------------------------------------"
    puts "Type a number to see more information about a book.".colorize(:light_green)
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
      puts "----------------------------------------"
      puts "#{book.book_title}".colorize(:light_blue)
      puts "----------------------------------------"
      puts ""
      puts "Written by:     #{book.author_name}".colorize(:light_green)
      puts "Book Category:  #{book.book_category}".colorize(:light_green)
      puts ""
      puts "----------------------------------------"
      puts "Book Review".colorize(:light_blue)
      puts "----------------------------------------"
      puts "#{book.book_review}"
      puts ""
    end

    def menu
      input = nil
      while input != "exit"
          puts ""
          puts "Type a new number for another book."
          puts ""
          puts "Done? Type exit to end the program.".colorize(:light_green)
          puts ""
        input = gets.strip.downcase
        if input.to_i > 0
          if book = PenguinBooks::Book.find(input.to_i)
              print_book(book)
          end
        elsif input == "menu"
              print_book(book)
        else
          puts "Not sure what you want? Type a number or type exit.".colorize(:blue) unless input == "exit"
        end
      end

      def goodbye
          puts "Check back for more books soon!".colorize(:light_green)
        end
    end
