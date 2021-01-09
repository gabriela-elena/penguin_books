class PenguinBooks::CLI
  def call
    welcome
    trending_releases
    user_prompt
end

def welcome #title for selection
  puts ""
  puts "••••••••••••••••••••••••••••••••••••••••"
  puts ""
  puts "BOOKS COMING SOON!".colorize(:blue)
  puts ""
  puts "••••••••••••••••••••••••••••••••••••••••"
  puts "Type a number to see more information about an upcoming book.".colorize(:light_blue) #instuctions
  puts ""
end

def trending_releases
    PenguinBooks::Scraper.scrape_books #scraper
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
  puts ""
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

  def user_prompt #user instructions
    input = nil #repeats instructions
    while input != "exit"
      puts ""
      puts "----------------------------------------"
      puts "• Type a number to view a book.".colorize(:light_green) 
      puts ""
      puts "• Type menu to see the list of books again.".colorize(:light_green)
      puts ""
      puts "• Done? Type exit to end the program.".colorize(:light_cyan)
      puts ""
      input = gets.strip.downcase
      if input.to_i > 0 
        if book = PenguinBooks::Book.find(input.to_i)
            print_book(book)
        end
      elsif input == "menu"
        trending_releases
      else
        puts "Check back for more books soon!".colorize(:light_green) #exit message
        unless input == "exit"
      end
    end
  end
end
end    
