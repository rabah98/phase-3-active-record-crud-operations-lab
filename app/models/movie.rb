class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end
    def self.first_movie
        self.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        self.last.id
    end
    def self.find_movie_with_id(id)
        self.find(id)
    end
    def self.find_movie_with_attributes(attribute)
        find_by(attribute)
    end
    def self.find_movies_after_2002
        self.where("release_date > ?", 2002)
    end
    def self..update_all_titles updates(title)
        self.update[title: title]
    end
end