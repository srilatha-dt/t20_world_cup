class MatchesController < ApplicationController
    before_action :set_match, only: [:show, :edit, :update, :destroy]

    
    def index
        @matches = Match.all
    end

    def show
        
    end

    def new
        @Match = Match.new
    end

    def edit 
        
    end

    def create
        @match = Match.new(match_params)
        if @match.save
            flash[:notice] = "Match was created successfully."
            redirect_to @match
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update 
        if @macth.update(match_params)
            flash[:notice] = "Match was updated successfully."
            redirect_to @match
        else
            render :edit
        end
        @macth = Match.new(match_params)
    end

    
    def destroy
        @match = Match.find(params[:id])
        if @match.present?
          @match.destroy
        end
        redirect_to matches_path
    end
    
    

    private

    def set_match
        @match = Match.find(params[:id])
    end

    def match_params
        params.require(:match).permit(:location, :date, :user_id, :team_id)
    end

    
end
