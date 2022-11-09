class Movie < ActiveRecord::Base
    # create a new Movie with title
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # find the first movie in the database
    def self.first_movie
        Movie.first 
    end

    # returns last movie in the database
    def self.last_movie
        Movie.last
    end

    # returns all movies in the database
    def self.movie_count
        Movie.count
    end

    # find movies with id
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    # find movies with attributes
    def self.find_movie_with_attributes(title_name)
        Movie.find_by(title_name)
    end

    # movies after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    # Update a movie
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # update all titles
    def self.update_all_titles(new_title)
        Movie.update(title: new_title)
    end

    # delete movie by id
    def self.delete_by_id(id)
        Movie.find(id).destroy
    end

    # delete all movies
    def self.delete_all_movies
        Movie.destroy_all 
    end

end