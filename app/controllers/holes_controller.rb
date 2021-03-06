class HolesController < ApplicationController
  before_action :get_course
  before_action :set_hole, only: [:show, :edit, :update, :destroy]

  # GET /holes or /holes.json
  def index
    @holes = @course.holes
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
        format.html { redirect_to course_holes_path(@course), notice: "Hole was successfully created." }
        format.json { render :show, status: :created, location: @hole }
      else
        format.html { render :new }
        format.json { render json: @hole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holes/1 or /holes/1.json
  def update
    respond_to do |format|
      if @hole.update(hole_params)
        format.html { redirect_to course_hole_path(@course), notice: "Hole was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @hole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holes/1 or /holes/1.json
  def destroy
    @hole.destroy

    respond_to do |format|
      format.html { redirect_to course_holes_path(@course), notice: "Hole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def get_course
    @course = Course.find(params[:course_id])
  end

  # Use callbacks to share common setup or constraints between actions.

  def set_hole
    @hole = @course.hole.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hole_params
    params.require(:hole).permit(
      :course_id,
      :hole_number,
      :par,
      :course_hcap_val,
      :center_of_green,
      :first_tee_distance,
      :second_tee_distance,
      :third_tee_distance,
      :fourth_tee_distance,
      :fifth_tee_distance,
      :latitude,
      :longitude,
    )
  end
end
