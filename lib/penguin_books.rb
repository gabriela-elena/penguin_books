# frozen_string_literal: true
require_relative "./penguin_books/version"
require_relative "./penguin_books/cli"
require_relative "./penguin_books/author"
require_relative "./penguin_books/scraper"
require_relative "./penguin_books/book"

require 'pry'
require 'nokogiri'
require 'open-uri'

module PenguinBooks
  class Error < StandardError; end
  # Your code goes here...
end
