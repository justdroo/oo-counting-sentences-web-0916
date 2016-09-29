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

  # def count_sentences
  #   i = 0
  #   self.split.each do |word|
  #   if word.sentence? || word.question? || word.exclamation?
  #     i += 1
  #   end
  # end
  #   i
  # end

  # def count_sentences
  #   self.split.each_with_object([]) do |word, sentence_arr|
  #     if word.sentence? || word.question? || word.exclamation?
  #       sentence_arr << word
  #     end
  #   end.count
  # end

  # OPTIMIZE :)
  def count_sentences
    self.split(/[.?!]\s/).count
  end

end
