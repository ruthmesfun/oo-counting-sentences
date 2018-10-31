require 'pry'

class String

  def sentence?
    self.end_with?('.') || question?|| exclamation?
  end

  def question?
    self.end_with?('?') 
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split(/[.!?]/).select{|element| !element.empty?}.length
  end
end