class BirdsController < ApplicationController
    # GET /birds
    def index
        # byebug
        birds = Bird.all
        render json: birds
    end

    # GET /birds/:id
    def show

    end
end
