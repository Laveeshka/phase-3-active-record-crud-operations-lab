class Movie < ActiveRecord::Base
    #CREATE method
    def self.create_with_title(title)
         self.create(title: title)
    end

    #READ methods
    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find_by(id: id)
    end

    def self.find_movie_with_attributes(attributes_hash)
        self.find_by(attributes_hash)
    end

    def self.find_movies_after_2002
        self.where(["release_date > ?", '2002'])
    end

    #UPDATE methods
    def update_with_attributes(attributes_hash)
        self.update(attributes_hash)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    #DELETE methods
    def self.delete_by_id(id)
        self.destroy_by(id: id)
    end

    def self.delete_all_movies
        self.destroy_all
    end

end