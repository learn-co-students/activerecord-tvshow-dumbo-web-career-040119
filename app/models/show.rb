require 'pry'

class Show < ActiveRecord::Base
    #binding.pry
    def self.highest_rating
        #binding.pry
        Show.all.maximum(:rating)
    end
    
    def self.most_popular_show
        #binding.pry
        Show.all.max_by do |shows|
            shows.rating 
            #binding.pry
        end
    end

    def self.lowest_rating
        #binding.pry
        Show.all.minimum(:rating)
    end

    def self.least_popular_show
        #binding.pry
        Show.all.min_by do |shows|
            shows.rating 
            #binding.pry
        end
    end

    def self.ratings_sum
        Show.all.map do |shows|
            shows.rating
        end.reduce(:+)
    end

    def self.popular_shows
        Show.all.select do |shows|
            shows.rating > 5
        end
    end

    def self.shows_by_alphabetical_order
        # Show.all.map do |shows|
        #     binding.pry
        #     shows.name
        # end

        Show.all.order(:name)
    end

end