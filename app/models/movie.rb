class Movie < ActiveRecord::Base
    def self.create_movie(title)
        movie = self.new(title: title)
        movie.save
        movie
    end

    def self.first_movie
        self.first
    end
    
    def self.last_movie
        self.last
    end
    
    def self.count_movies
        self.count
    end
    
    def self.find_movie(id)
        self.find(id)
    end
    
    def self.find_movie_by(attributes)
        self.find_by(attributes)
    end
    
  

    # Update

    def update_movie(attributes)
        self.update(attributes)
    end

    def self.update_all_movies(title)
        self.update_all(title: title)
    end

    # Delete

    def delete_movie
        self.destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end
    def self.create_with_title(title)
        movie = Movie.new
        movie.title = title
        movie.save
        movie
      end
    
      def self.movie_count
        Movie.count
      end
    
      def self.find_movie_with_id(id)
        Movie.find_by(id: id)
      end
    
      def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
      end
    
      def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002).order(:release_date)
      end
    
      def update_with_attributes(attributes)
        update(attributes)
      end
    
      def self.update_all_titles(new_title)
        Movie.update_all(title: new_title)
      end
      def self.delete_by_id(id)
        movie = Movie.find_by(id: id)
        movie.destroy if movie
      end
  
end






