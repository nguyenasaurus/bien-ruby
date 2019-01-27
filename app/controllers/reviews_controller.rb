class ReviewsController < ApplicationController
    def index
        # this is our list page for our reviews
        @reviews = ["Zak's Diner","Blue Cactus","Fat Joe's","Weedle Taste of Europe","El Warehouse", "Benny's Bistro"]
    end

    def new

    end


end
