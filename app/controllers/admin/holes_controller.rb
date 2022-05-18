module Admin
  class HolesController < ApplicationController
    before_action :get_course, only: %i[ index edit show new create ]
    before_action :set_hole, only: %i[ edit show update destroy ]

    # GET /holes or /holes.json
    def index
      @holes = @course.holes.all
    end

    # GET /holes/1 or /holes/1.json
    def show
    end

    # GET /holes/new
    def new 
      @hole = @course.holes.build
    end

    # GET /holes/1/edit
    def edit
    end

    # POST /holes or /holes.json
    def create
      @hole = @course.holes.build(hole_params)

      respond_to do |format|
        if @hole.save
          format.html { redirect_to admin_course_holes_url(@course), notice: "Hole was successfully created." }
          format.json { render :show, status: :created, location: @hole }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @hole.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /holes/1 or /holes/1.json
    def update
      respond_to do |format|
        if @hole.update(hole_params)
          format.html { redirect_to admin_course_holes_path(@course), notice: "Hole was successfully updated." }
          format.json { render :show, status: :ok, location: @course }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @hole.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /holes/1 or /holes/1.json
    def destroy
      @hole.destroy

      respond_to do |format|
        format.html { redirect_to admin_course_holes_path(@course), notice: "Hole was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_hole
      @hole = @course.holes.find(params[:id])
    end

    def get_course
      @course = Course.find(params[:course_id])
    end

    # Only allow a list of trusted parameters through.
    def hole_params
      params.require(:hole).permit(@course.id,:hole_number, :course_id, :par_value, :course_hcap_val, :center_of_green, :forward_tee_distance, :mid_tee_distance, :long_tee_distance, :fourth_tee_distance, :fifth_tee_distance)
    end
  end
end