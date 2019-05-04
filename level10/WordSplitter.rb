class WordSplitter
  include Enumerable
  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word #word текущее слово передаётся блоку, который был передан "each"
    end
  end
end

splitter = WordSplitter.new
splitter.string = "how do you do"

p splitter.find_all {|word| word.include?("d")}
