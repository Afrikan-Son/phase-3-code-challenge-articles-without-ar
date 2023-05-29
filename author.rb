=begin
#initialize(name): Initialise an author with a name
#name: Return the name of the autho\r
#articles: Return an arrayof Article\ instances the author has written
#magazines: Return a uique array of Magazine instances for which the author has contributed to
#add_article(magazine, title): Create a new Artile instance asociated with the author and the specified magazine
#topic_areas: Return a uique array of strings with the catgries of the magazines the author has contributed to
=end


=begin 
class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def articles
      Article.all.select { |article| article.author == self }
    end
  
    def magazines
      articles.map(&:magazine).uniq
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      magazines.map(&:category).uniq
    end
end

??topics/&&map
=end

class Author
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  




    def articles
        Article.all.select { |article| article.author == self }
      end
    
      def magazines
        articles.map { |article| article.magazine }.uniq
      end
    
      def add_article(magazine, title)
        Article.new(self, magazine, title)
      end
    
      def topic_areas
        magazines.map { |magazine| magazine.category }.uniq
    end
   
end