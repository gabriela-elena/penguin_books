class PenguinBooks::CLI

  def call
      welcome
      trending_releases
      menu
      goodbye
  end

  def welcome
    puts ""
    puts "••••••••••••••••••••••••••••••••••••••••"
    puts ""
    puts "BOOKS COMING SOON!".colorize(:blue) #title for selection
    puts ""
    puts "••••••••••••••••••••••••••••••••••••••••"
    puts "Type a number to see more information about an upcoming book.".colorize(:light_blue) #instuctions
    puts ""
  end

  def trending_releases
      #@books = PenguinBooks::Book.all
      PenguinBooks::Scraper.scrape_authors #scraper
      PenguinBooks::Book.all.each.with_index(1) do |book, i| 
          puts "#{i}. #{book.book_title}".colorize(:light_gray) #puts integer with a book title from website
          puts ""
        end
    end

    def print_book(book) 
      puts ""
      puts "••••••••••••••••••••••••••••••••••••••••"
      puts""
      puts "#{book.book_title}".colorize(:light_blue) #book title
      puts""
      puts "••••••••••••••••••••••••••••••••••••••••"
      puts "" #includes attr_accessor :author_name, :book_title, :book_category, :book_summary, :isbn, :available_as
      puts "Book Author:".colorize(:light_cyan)   
      puts "#{book.author_name}"
      puts ""
      puts "Book Category:".colorize(:light_cyan)
      puts "#{book.book_category}"
      puts ""
      puts "Book ISBN:".colorize(:light_cyan)       
      puts "#{book.isbn}"
      puts ""
      puts "Available As:".colorize(:light_cyan)
      puts "#{book.available_as}"
      puts ""
      puts "Book Summary:".colorize(:light_cyan)
      puts "#{book.book_summary}"
      puts ""
      puts ""
    end

    def menu
      input = nil
      while input != "exit"
          puts ""
          puts "----------------------------------------"
          puts "Type a new number for another book.".colorize(:light_green) #instructions for another selection
          puts ""
          puts "Done? Type exit to end the program.".colorize(:light_magenta)
          puts ""
        input = gets.strip.downcase
        if input.to_i > 0 
          if book = PenguinBooks::Book.find(input.to_i)
              print_book(book)
          end
        elsif input == "menu"
              print_book(book)
        else
          puts "Not sure what you want? Type a number or type exit.".colorize(:light_magenta) unless input == "exit"
        end
      end

      def goodbye #exit message
          puts "Check back for more books soon!".colorize(:light_cyan)
        end
    end
  end
