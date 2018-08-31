class TextAnalyzer
  def process
    file_text = File.read('text_for_analyzer.txt')
    yield(file_text) if block_given?
  end
end

analyzer = TextAnalyzer.new
analyzer.process do |text|
  puts "#{text.split("\n\n").size} paragraphs"
end

analyzer.process do |text|
  puts "#{text.split("\n").size} lines"
end

analyzer.process do |text|
  puts "#{text.split("\s").size} words"
end
