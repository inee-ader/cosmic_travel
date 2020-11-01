class ScientistsController < ApplicationController
    
    before_action :find_scientist, only: [:show, :edit, :update, :destroy]

    def index 
        @scientists = Scientist.all
    end

    def new 
        @scientist = Scientist.new
    end

    def create 
        @scientist = Scientist.new(scientist_params)
        respond_to do |format|
            if @scientist.save
                format.html { redirect_to @scientist, notice: 'Scientist was successfully created.' }
                format.json { render :show, status: :created, location: @scientist }
            else
                format.html { render :new }
                format.json { render json: @scientist.errors, status: :unprocessable_entity }
            end
        end
    end

    def show 
    end
    
    def edit 
    end

    def update
        @scientist.update(scientist_params)
        redirect_to scientist_path(@scientist)
    end

    def destroy 
        @scientist.destroy
        redirect_to scientists_path
    end

    private 

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end

    def find_scientist
        @scientist = Scientist.find(params[:id])
    end

end
