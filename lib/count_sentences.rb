require 'pry'

class String

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
 split_self = self.gsub!(".", ".|").gsub!("!", "!|").split("|")
 split_self.length
end
end



 "This is a string! It has three sentences. Right?".count_sentences
