=begin
require_relative 'author'
require_relative 'article'
require_relative 'magazine'

# Create instances and test the methods here
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Tech Today", "Technology")

article1 = author1.add_article(magazine1, "Latest Fashion Trends")
article2 = author2.add_article(magazine2, "The Future of Technology")
article3 = author1.add_article(magazine2, "AI in the Fashion Industry")

puts "Author: #{author1.name}"
puts "Articles by #{author1.name}: #{author1.articles.map(&:title)}"
puts "Magazines contributed by #{author1.name}: #{author1.magazines.map(&:name)}"
puts "Author: #{author2.name}"
puts "Articles by #{author2.name}: #{author2.articles.map(&:title)}"
puts "Magazines contributed by #{author2.name}: #{author2.magazines.map(&:name)}"

puts "Magazine: #{magazine1.name}"
puts "Contributors for #{magazine1.name}:

puts magazine1.contributors.map(&:name)
puts "Article titles for #{magazine1.name}: #{magazine1.article_titles}"

puts "Magazine: #{magazine2.name}"
puts "Contributors for #{magazine2.name}: #{magazine2.contributors.map(&:name)}"
puts "Article titles for #{magazine2.name}: #{magazine2.article_titles}"

puts "Finding magazine by name: 'Fashion Weekly'"
found_magazine = Magazine.find_by_name("Fashion Weekly")
puts "Found magazine: #{found_magazine.name}"

puts "Contributing authors for #{magazine2.name} (who wrote more than 2 articles):"
puts magazine2.contributing_authors.map(&:name)

=end