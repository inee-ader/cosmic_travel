class AboutController < ApplicationController

    def index 
        scientist_count
        planet_count
    end

    def scientist_count
        @scientists = Scientist.all.count
    end
    
    def planet_count
        @planets = Planet.all.count 
    end

end