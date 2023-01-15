class BirdsController < ApplicationController
    # GET /birds
    def index
        # byebug
        birds = Bird.all
        render json: birds
    end
    # GET /birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        render json: bird
    end
    # POST /birds
    def create
        bird = Bird.create(name: params[:name], species: params[:species])
        render json: bird, status: :created
    end
    # PATCH /birds
    # def update
    #     # Find bird by id.
    #     bird = Bird.find_by(id: params[:id])
    #     # Update bird
    #     # bird.update(name: params[:name], species: params[:species])
    #     # bird.update(params.permit(:name, :species))
    #     bird.update(bird_params)

    #     # Return updated bird.
    #     render json: bird
    # end
    def update
        # Find bird by id
        bird = Bird.find_by(id: params[:id])
        # If bird found update and render.
        # If not found return error message.
        if bird
            bird.update(bird_params)
            render json: bird
        else
            render json: { error: "Bird not found" }, status: :not_found
        end
    end
    # DELETE
    # def destroy
    #     # Find bird by id.
    #     # Destroy bird.
    #     # Return head: no_content
    #     bird = Bird.find_by(id: params[:id])
    #     bird.destroy
    #     head :no_content
    # end
    def destroy 
        bird = Bird.find_by(id: params[:id])
        if bird
            bird.destroy
            head :no_content
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end

    private

    def bird_params
        params.permit(:name, :species)
    end

end
