class ReviewsController < ApplicationController
    def index
        # this is our list page for our reviews
        @reviews = Review.all
    end

    def new
        #form for adding a new review
        @review = Review.new
    end

    def create
        #take info from form and add it to database
        @review = Review.new(params.require(:review).permit(:restaurant, :title, :body, :score))

        #save to database
        @review.save

        #redirect to homepage
        redirect_to root_path
    end

    def show
        #individual review page
        @review = Review.find(params[:id])
    end

    def destroy
        #find individual review
        @review = Review.find(params[:id])

        #destory
        @review.destroy

        #redirect to home page
        redirect_to root_path
    end

end

# t.string :title
# t.text :body
# t.integer :score
# t.string :restaurant
# t.integer :price
# t.string :cuisine
