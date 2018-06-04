class AnagramKata

  def initialize(anagram)
    @anagram = anagram.split("")
    @anagram_sorted = @anagram.sort
  end

  def on(text)
    text_splitted = text.split("")
    match = []
    0.upto(text_splitted.size - @anagram.size) do |idx|
      match << idx if  text_splitted[idx..idx+@anagram.size-1].sort == @anagram_sorted
    end
    match
  end
end
