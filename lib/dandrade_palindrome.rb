require "dandrade_palindrome/version"

class String
  class Error < StandardError; end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private
  def processed_content
    self.downcase
  end
end
