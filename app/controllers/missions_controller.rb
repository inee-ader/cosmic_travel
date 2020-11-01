class MissionsController < ApplicationController
    
    def index 
        @missions = Mission.all
    end

    def new 
        @mission = Mission.new
    end

    def create 
        @mission = Mission.new(mission_params)
        respond_to do |format|
            if @mission.save
                format.html { redirect_to scientist_path(@mission.scientist_id), notice: 'Mission was successfully created.' }
                format.json { render :show, status: :created, location: @mission } 
            else
                format.html { render :new }
                format.json { render json: @mission.errors, status: :unprocessable_entity }
            end
        end
    end

    def show 
        @mission = Mission.find(params[:id])
    end
    
    def edit 
    end

    def update
    end

    def delete 
    end

    private 

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end
    
end
