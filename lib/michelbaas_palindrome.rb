require "michelbaas_palindrome/version"

module MichelBaasPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty? || processed_content.match?(/^\s*$/)
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include MichelBaasPalindrome
end

class Integer
  include MichelBaasPalindrome
end
