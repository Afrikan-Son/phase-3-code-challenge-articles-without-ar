=begin
#initialize(author, magazine, title):Initialize an article with an author (Author object), a magazine (Magazine object)and a title (string)
#title: Return the title of the article
#author: Return the author of the articl
#magazine: Return the magazine of the article
=end

=begin
class Article
    attr_reader :author, :magazine, :title
  
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
end

=end

class Article
    attr_reader :author, :magazine, :title
  
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end

    
end

