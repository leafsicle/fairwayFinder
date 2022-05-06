module Admin
  class ScorecardsController < ApplicationController
    before_action :set_scorecard, only: %i[ show edit update destroy ]

    # GET /scorecards or /scorecards.json
    def index
      @scorecards = Scorecard.all
    end

    # GET /scorecards/1 or /scorecards/1.json
    def show
    end

    # GET /scorecards/new
    def new
      @scorecard = Scorecard.new
    end

    # GET /scorecards/1/edit
    def edit
    end

    # POST /scorecards or /scorecards.json
    def create
      @scorecard = Scorecard.new(scorecard_params)

      respond_to do |format|
        if @scorecard.save
          format.html { redirect_to scorecard_url(@scorecard), notice: "Scorecard was successfully created." }
          format.json { render :show, status: :created, location: @scorecard }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @scorecard.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /scorecards/1 or /scorecards/1.json
    def update
      respond_to do |format|
        if @scorecard.update(scorecard_params)
          format.html { redirect_to scorecard_url(@scorecard), notice: "Scorecard was successfully updated." }
          format.json { render :show, status: :ok, location: @scorecard }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @scorecard.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /scorecards/1 or /scorecards/1.json
    def destroy
      @scorecard.destroy

      respond_to do |format|
        format.html { redirect_to scorecards_url, notice: "Scorecard was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_scorecard
        @scorecard = Scorecard.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def scorecard_params
        params.require(:scorecard).permit(:user_id)
      end 
  end
end