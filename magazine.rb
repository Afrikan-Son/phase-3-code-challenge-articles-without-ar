=begin
initialize(name, category): Initialize a magazine with a name (string) and a category (string)
name: Return the na]me of the magazine
category: Retrn the category of the magazine
contributors: Retrn an array of Author instances who have written for this magazine
article_titles: Retun an array of strings containing the titles of all articles written for the magazine
self.all: Return an aray of all Magzine instances
self.find_by_name(name): Given a string of a magzine's name, return the first magazine object that matchs
contributing_authors: Return an array of auhors who have written more than 2 articles for the magazine
=end

=begin class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors
      Article.all.select { |article| article.magazine == self }.map(&:author)
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }.map(&:title)
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def contributing_authors
      contributors.group_by(&:name).select { |_, authors| authors.length > 2 }.values.flatten
    end
end
=end


class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
end