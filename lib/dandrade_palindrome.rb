require "dandrade_palindrome/version"

class String
  class Error < StandardError; end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the strring.
  def letters
    # the_letters = []
    letter_regex = /[a-z]/i
    # for i in 0..self.length - 1
    #   character = self[i]
    #   if (character.match(letter_regex))
    #     the_letters << character
    #   end
    # end

    # self.chars.each do |character|
    #   if character.match(letter_regex)
    #     the_letters << character
    #   end
    # end
    # the_letters.join

    # self.chars.select { |c| c.match letter_regex }.join

    # self.chars.map{ |c| c.match /[a-zA-Z]/ }.join

    self.scan(letter_regex).join
  end

  private
  # Returns content for palindrome testing.
  def processed_content
    letter_regex = /[a-z]/i
    scan(letter_regex).join.downcase
  end
end
