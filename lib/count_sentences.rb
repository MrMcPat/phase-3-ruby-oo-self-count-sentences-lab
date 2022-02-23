require 'pry'

class String

  def showing_self
    self
  end

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    separated = self.split(/\.|\?|\!/)
    filtered_strings = separated.filter do |string|
      string.length > 0
    end
    filtered_strings.count
  end
end

somesentence = String.new

somesentence = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

print somesentence.count_sentences